# Indici
postgres indicizza di default tutte le chiavi primarie delle tabelle

siccome le nostre tabelle non hanno volumi significativi(inferiori alle 200 righe) allora non è fondamentale introdurre ulteriori indici che potrebbero solamente introdurre dei rallentamenti nel momento in cui gli indici vengono aggiornati.

## Indice Funzionale Case-Insensitive sui Partecipanti
**Struttura:** B-Tree.
Nel software, l'utente cercherà i nomi senza curarsi delle maiuscole (es. cercando `"marco"` o `"GIRALDI"`), garantendo ricerche esatte in tempo logaritmico $O(\log N)$.
```sql
-- Creazione dell'indice funzionale composto
CREATE INDEX idx_partecipanti_nome_cognome_lower 
ON partecipanti ((LOWER(nome)), (LOWER(cognome)));

-- Query di esempio che sfrutta appieno l'indice:
SELECT * FROM partecipanti 
WHERE LOWER(nome) = 'mArCo' AND LOWER(cognome) = 'gIrAlDi';

```

## Indice Funzionale Temporale (GIST) sulle Attività
**Struttura:** **GIST** (Generalized Search Tree).
Gli indici classici (B-Tree) ordinano i dati in modo lineare e sanno rispondere solo a domande come "maggiore", "minore" o "uguale". L'operatore `OVERLAPS` richiede invece di capire se due segmenti temporali (inizio $\rightarrow$ fine) si intersecano nello stesso momento. Senza un indice dedicato, ogni volta che inserisci un'attività il trigger costringerà il database a scansionare interamente le tabelle. Usando la struttura **GIST** combinata con la funzione costruttrice di intervalli `tsrange`, l'intervallo diventa un "oggetto geometrico" indicizzato. Il database troverà i conflitti all'istante, riducendo drasticamente i tempi di inserimento.

```sql
-- 1. Abilita l'estensione nativa di PostgreSQL per usare i tipi btree dentro l'albero GIST
CREATE EXTENSION IF NOT EXISTS btree_gist;

-- 2. Creazione dell'indice basato sul range temporale per le tabelle delle attività
CREATE INDEX idx_attivita_routine_intervallo 
ON attivita_routine USING GIST (tsrange(data_ora_inizio, data_ora_fine));

CREATE INDEX idx_attivita_faccende_intervallo 
ON attivita_faccende USING GIST (tsrange(data_ora_inizio, data_ora_fine));

CREATE INDEX idx_pasti_intervallo 
ON attivita_pasto USING GIST (tsrange(data_ora_inizio, data_ora_fine));

CREATE INDEX idx_attivita_extra_intervallo 
ON attivita_extra USING GIST (tsrange(data_ora_inizio, data_ora_fine));

```

## Indice d'Integrità sulla Chiave Esterna Cuochi Pasti
**Struttura:** B-Tree.
utile al vincolo vincolo: *"Un cuoco non può supervisionare un pasto se è allergico a un ingrediente contenuto in una pietanza servita in quel pasto"*.

Quando viene inserito o modificato un pasto, il trigger deve effettuare una catena di `JOIN` partendo dal cuoco assegnato (`codice_fiscale_cuoco`) fino ad arrivare agli ingredienti e alle sue allergie. PostgreSQL non crea automaticamente gli indici sulle Chiavi Esterne (`FOREIGN KEY`). Senza questo indice, per ogni controllo sulle allergie del cuoco associato a un determinato pasto, il database effettuerebbe un pesante Sequential Scan sulla tabella `pasti`. Questo indice permette al database di isolare e controllare immediatamente solo i pasti di competenza di quel cuoco, salvaguardando le performance dei controlli d'integrità.

```sql
-- Creazione dell'indice B-Tree standard sulla foreign key
CREATE INDEX idx_pasti_cuoco_supervisore 
ON pasti (codice_fiscale_cuoco);

-- Query (interna alla logica del trigger di controllo allergie) ottimizzata dall'indice:
SELECT 1 
FROM pasti p
WHERE p.codice_fiscale_cuoco = NEW.codice_fiscale_cuoco;

```