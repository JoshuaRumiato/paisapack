<table>
  <tr>
    <td>Joshua Rumiato</td><td>168062</td>
  </tr>
  <tr>
    <td>Mattia Nadal</td><td>168062</td>
  </tr>
  <tr>
    <td>Kevin Polesello</td><td>167947</td>
  </tr>
  <tr>
    <td>Francesco Vignandel</td><td>167024</td>
  </tr>
</table>

# Progetto basi di dati - gruppo 11

Il sistema deve poter gestire dei campi-scuola negli aspetti che li caratterizzano, supportando tutte le operazioni necessarie alla loro organizzazione.

Ogni campo...

- È caratterizzato da alcune informazioni di carattere generale, come tema, eventuale sotto-tema, un periodo di durata, delle regole, e da una lista di oggetti occorrenti per ogni partecipante.

- È guidato da un'equipe composta da cuochi, animatori, capi-campo (possono essere visti come animatori con speciali responsabilità) e altre figure (come visitatori, collaboratori esterni, ...). Le informazioni rilevanti per ciascuna di queste figure sono:
	- foto
	- nome e cognome
	- sesso (maschio, femmina, altro)
	- data e luogo di nascita
	- contatti (numero di telefono e mail)
	- contatti di emergenza (numero di telefono e mail, ad esempio quella di un parente)
	- intolleranze alimentari
	- note aggiuntive, ad esempio...
		- altre intolleranze/allergie
		- patologie
		- situazioni particolari che vive o ha vissuto che potrebbero influenzare l'esperienza (es. bullismo)
		- deve prendere medicinali (specificando come e quando)
		- arriva dopo al campo, deve andare via prima, ...
    - valutazione del suo operato (ad esempio con un voto da 1 a 5 accompagnato da un commento)

- Prevede la presenza di un certo numero di ragazzi, per i quali si vuole salvare
	- foto
	- nome e cognome
	- sesso (maschio, femmina, altro)
	- data e luogo di nascita
	- contatti di un genitore o di chi ne fa le veci (mail e telefono, da usare in caso di emergenze)
	- intolleranze alimentari
	- note aggiuntive, ad esempio...
		- altre intolleranze/allergie
		- patologie
		- situazioni particolari che vive o ha vissuto che potrebbero influenzare l'esperienza (es. bullismo)
		- deve prendere medicinali (specificando come e quando)
		- arriva dopo al campo, deve andare via prima, ...

- Prevede che i ragazzi vengano divisi in squadre per la partecipazione alle attività organizzate. Ogni squadra possiede un nome, uno slogan, degli animatori responsabili e un punteggio (ottenuto dai punti guadagnati durante le varie attività).

- Prevede che le squadre, oltre ai giochi, si mettano a disposizione per lo svolgimento di alcune faccende domestiche. Nell'arco di una giornata, queste sono:
	- preparazione colazione
	- spreparazione colazione
	- pulizia stoviglie colazione
	- pulizia piazzetta
	- pulizia bagni
	- preparazione pranzo
	- spreparazione pranzo
	- pulizia stoviglie pranzo
	- preparazione cena
	- spreparazione cena
	- puliza stoviglie cena

    Occorre gestire dei turni di rotazione affinché tutte le squadre svolgano almeno una volta tutte le faccende.

- Mappa tutti i partecipanti al campo-scuola (equipe + ragazzi) sulle camere della struttura che ospita il campo (maschi con maschi, femmine con femmine). Ogni camera ha un numero, dei posti letto e può avere un animatore responsabile, che dorme al suo interno (animatori maschi nelle camere dei maschi, e animatrici nelle camere femminili). Nessuna camera può contenere più persone di quanti sono i posti letto indicati per essa.

- Presenta delle attività giornata per giornata, per cui occorre salvare l'orario di inizio e opzionalmente quello di fine . Ogni attività possibile è categorizzata come segue:
    - PASTI:
		- colazione
		- merenda
		- pranzo
		- cena
	- FACCENDE:
		- preparazione colazione
		- spreparazione colazione
		- pulizia stoviglie colazione
		- pulizia piazzetta
		- pulizia bagni
		- preparazione pranzo
		- spreparazione pranzo
		- pulizia stoviglie pranzo
		- preparazione cena
		- spreparazione cena
		- puliza stoviglie cena
	- ROUTINE:
		- sveglia animatori
		- sveglia ragazzi
		- attività fisica
		- preghiera
        - attività della mattina
        - attività del pomeriggio
		- docce
        - gioco libero
		- messa
        - attività serale
		- verifica della giornata
	- EXTRA:
		- altro

    Si deve tenere presente che:
    -   per i pasti, occorre stabilire il menù del giorno
    -   per le attività di mattino/pomeriggio/sera si deve fornire una breve descrizione (es. funzionamento di un gioco), uno o più animatori responsabili e un insieme di materiali specifici richiesti
    -   ogni attività può essere valutata tramite voto da 1 a 5 + commento

- Ha la propria lista di materiali, intesa come unione di una serie di voci generiche (materiali da portare assolutamente perché di frequente e disparato utilizzo) e dalle voci specifiche definite per ogni attività.
Per ogni voce di materiale, va registrato prezzo complessivo, se è già disponibile (o se è da acquistare), se è stato caricato e portato al campo.

- Il menù del campo può essere visto come la combinazione dei menù delle singole giornate previsti per ogni pasto (colazione, pranzo, merenda, cena). Ogni ingrediente del menu ha una quantità, un prezzo ed eventualmente degli allergeni