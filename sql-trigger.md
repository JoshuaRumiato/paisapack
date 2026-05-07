TRIGGER
Definizione di pochi (2 o 3) trigger risultanti dalla
progettazione (è opportuno discutere prima con il professore quali trigger scrivere)

1. [ ] SE IN UNA STANZA CI SONO ANIMATI, CI DEVE ESSERE ALMENO UN ANIMATORE REPSONSABILE.
2. [ ] SE IN UNA STANZA CI SONO ANIMATI, ALLORA DEVONO ESSERE O TUTTI MASCHI O TUTTE FEMMINE (INCLUSI GLI ANIMATORI RESPONSABILI)
3. [ ] LE PERSONE CHE DORMONO IN UNA STANZA (ANIMATI + ANIMATORE) DEVONO ESSERE <= AL NUMERO DI POSTI LETTO DISPONIBILI
4. [ ] I MEMBRI DELL'EQUIPE (ESCLUSI GLI ANIMATORI) POSSONO DORMIRE SOLO CON ALTRI MEMBRI DELL'EQUIPE
5. [ ] Controllo che le attività non si sovrappongano come tempistiche, devono essere eseguite in sequenza (non necessariamente attaccate), NON in parallelo.
6. [x] Controllo che un partecipante abbia sempre(INSERT,UPDATE,DELETE) un singolo ruolo.
> [!Note]
> Il partecipante può cambiare ruolo perché non c'è un controllo per verificare se il campo è già cominciato 

CHECK da implementare nelle tabelle
1. [x] controllo struttura CF
2. [x] controllo valutazione da 1 a 5 con inizio null
3. [x] numero posti letto di un una stanza positivi
4. [x] formato numero di telefono tramite REGEX
5. [x] Controllo email tramite REGEX
6. [x] Punteggio positivo per la squadra
7. [x] Quantità su PREVEDE >0
8. [x] Numero di Utilizzi su MATERIALE >= 0