Eventuali evolutive da introdurre: 
- [x] prezzo di materiali, affitto
- [x] quota di partecipazione
TO-DO
- [x] Chiedere al professore l'attributo derivato
- [x] come gestire problema chiave primaria della faccenda perché potrebbe succedere che due squadre svolgono due faccende allo stesso momento:
    - identificare le attività in un'altro modo
    - fare una selezione di alcune faccende in modo che non possono essere svolte contemporaneamente
- [x] togliere ingrediente, allergene si collega direttamente a pietanze, occorrente e materiale diventano un'unica entità
- [ ] vedere se scrivere nella traccia la frequenza dell'operazione del vedere il materiale necessario
- [ ] Chiedere al prof del ciclo (non lo abbiamo fatto)
- [ ] Chiedere al prof se se la tabella stanza puo' non avere il collegamento alla tabella edificio (perche' c'e ne' solo uno e si ripeterebbero solamente i valori nella tabella stanza)
- [ ] Il ruolo non cambia durante il campo e' un po strano come trigger perche' dovrebbe basarsi sulla data corrente e sulla data di inizio/fine del campo, meglio chiedere al prof

Possibili query:
- quantità sul numero di pietanze da fare per pasto
- quantità totale del numero di occorrenti


# Funzioni per attributi derivati partecipante
- data di nascita da CF
    ```sql
    CREATE OR REPLACE FUNCTION cf_to_birthdate(cf text)
    RETURNS date
    LANGUAGE sql
    IMMUTABLE
    AS $$
        SELECT to_date(
            (
                CASE
                    WHEN substring(cf, 7, 2)::int <= 25 THEN '20'
                    ELSE '19'
                END
                || substring(cf, 7, 2)
            )
            ||
            CASE substring(cf, 9, 1)
                WHEN 'A' THEN '01'
                WHEN 'B' THEN '02'
                WHEN 'C' THEN '03'
                WHEN 'D' THEN '04'
                WHEN 'E' THEN '05'
                WHEN 'H' THEN '06'
                WHEN 'L' THEN '07'
                WHEN 'M' THEN '08'
                WHEN 'P' THEN '09'
                WHEN 'R' THEN '10'
                WHEN 'S' THEN '11'
                WHEN 'T' THEN '12'
            END
            ||
            CASE
                WHEN substring(cf, 10, 2)::int > 40
                    THEN lpad((substring(cf, 10, 2)::int - 40)::text, 2, '0')
                ELSE substring(cf, 10, 2)
            END,
            'YYYYMMDD'
        );
    $$;
    ```
- sesso da CF
    ```sql
    CREATE OR REPLACE FUNCTION cf_to_sesso(cf text)
    RETURNS text
    LANGUAGE sql
    IMMUTABLE
    AS $$
        SELECT CASE
            WHEN substring(cf, 10, 2)::int > 40 THEN 'F'
            ELSE 'M'
        END;
    $$;
    ```

- creazione tabella
    ```sql
    CREATE TABLE persone (
        cf CHAR(16) NOT NULL,
        data_nascita DATE GENERATED ALWAYS AS (cf_to_birthdate(cf)) STORED,
        sesso CHAR(1) GENERATED ALWAYS AS (cf_to_sesso(cf)) STORED
    );
    ```