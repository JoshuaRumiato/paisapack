TRIGGER
Definizione di pochi (2 o 3) trigger risultanti dalla
progettazione (è opportuno discutere prima con il professore quali trigger scrivere)

# TRIGGER SCELTI
1. [x] Controllo che un partecipante abbia sempre(INSERT,UPDATE,DELETE) un singolo ruolo.
[!Warning] check_single_ruolo_insert_update
> [!Note]
> Il partecipante può cambiare ruolo perché non c'è un controllo per verificare se il campo è già cominciato 
2. [x] Controllo che le attività non si sovrappongano come tempistiche, devono essere eseguite in sequenza (non necessariamente attaccate), NON in parallelo.
[!Warning] check_attivita
>[!Note]
> Spiegare la funzione overlpas.
3. [x] SE IN UNA STANZA CI SONO ANIMATI, CI DEVE ESSERE ALMENO UN ANIMATORE RESPONSABILE.
[!Warning] check_stanza_animatore_responsabile_insert_update

# TRIGGER TOTALI DA AGGIUNGERE IN RELAZIONI
1. partecipante abbia sempre uno e un solo ruolo
2. SE IN UNA STANZA CI SONO ANIMATI, CI DEVE ESSERE ALMENO UN ANIMATORE REPSONSABILE.
3. SE IN UNA STANZA CI SONO ANIMATI, ALLORA DEVONO ESSERE O TUTTI MASCHI O TUTTE FEMMINE (INCLUSI GLI ANIMATORI RESPONSABILI)
4. LE PERSONE CHE DORMONO IN UNA STANZA (ANIMATI + ANIMATORE) DEVONO ESSERE <= AL NUMERO DI POSTI LETTO DISPONIBILI
5. I MEMBRI DELL'EQUIPE (ESCLUSI GLI ANIMATORI) POSSONO DORMIRE SOLO CON ALTRI MEMBRI DELL'EQUIPE
6. Controllo che le attività non si sovrappongano come tempistiche, devono essere eseguite in sequenza (non necessariamente attaccate), NON in parallelo.
7. Punteggio della squadra sull'update deve essere sempre maggiore del punteggio precedente
8. Controllo che quando si inserisce una uova attività non si invertano data inizio e fine, o si inserisca un'orario di fine temporalmente precedente all'orario di inizio.
9. Un cuoco non puo' supervisionare un pasto se e' allergico ad un allergene contenuto in una pietanza che viene servita in quel pasto
## TRIGGER DA CARDINALITA'
10. una squadra deve aver per forza un animato
11. un edificio deve aver almeno una stanza
12. una squadra deve fare almeno una faccenda
13. un animatore deve essere responsabile di almeno una routine
14. una pietanza deve comparire almeno in un pasto
15. un pasto deve avere almeno una pietanza



CHECK da implementare nelle tabelle
1. [x] controllo struttura CF
2. [x] controllo valutazione da 1 a 5 con inizio null
3. [x] numero posti letto di un una stanza positivi
4. [x] formato numero di telefono tramite REGEX
5. [x] Controllo email tramite REGEX
6. [x] Punteggio positivo per la squadra
7. [x] Quantità su PREVEDE >0
8. [x] Numero di Utilizzi su MATERIALE >= 0
