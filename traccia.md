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

Il sistema deve poter gestire un campo-scuola negli aspetti che li caratterizzano, supportando tutte le operazioni necessarie alla loro organizzazione.

Ogni campo è caratterizzato da:
- Da un edificio avente traccia del suo indirizzo.

- Una lista di partecipanti che si dividono in Equipe e Animati (ragazzi) caratterizati da
	- CF
	- foto documento
	- nome e cognome
	- sesso (maschio, femmina)
	- data e luogo di nascita
	- intolleranze alimentari
	- note aggiuntive, ad esempio...
		- altre intolleranze/allergie
		- patologie
		- situazioni particolari che vive o ha vissuto che potrebbero influenzare l'esperienza (es. bullismo)
		- deve prendere medicinali (specificando come e quando)
		- arriva dopo al campo, deve andare via prima, ...

- L'equipe è composta da cuochi, animatori, capi-campo (possono essere visti come animatori con speciali responsabilità) e collaboratori. Le informazioni rilevanti per gli animatori sono:
	- numero di telefono ed email personale
    - valutazione del suo operato alla fine del campo(ad esempio un voto da 1 a 5 accompagnato da un commento)

- Per gli animati vengono salvati:
	- contatti di un genitore o di chi ne fa le veci (mail e telefono, da usare in caso di emergenze)

- Gli animati vengano divisi in squadre per la partecipazione alle attività organizzate, ogni squadra possiede:
	- un nome
	- uno slogan
	- un animatore responsabile
	- un punteggio (ottenuto dai punti guadagnati durante le varie attività, teniamo conto solo del puneggio comulativo che si aggiornerà a fine giornata).

- Le squadre si mettano a disposizione per lo svolgimento di alcune faccende domestiche (gestite da turni di rotazione affinché tutte le squadre svolgano almeno una volta tutte le faccende).
che nell'arco di una giornata.
    
- Tutti i partecipanti (equipe + ragazzi) dormono nelle camere della struttura che ospita il campo(maschi con maschi, femmine con femmine) e ogni camera ha:
	- un numero identificativo di stanza
	- numero di posti letto
	- piano
	- animatore responsabile, che dorme al suo interno (animatori maschi nelle camere dei maschi, e animatrici nelle camere femminili). 
	Nessuna camera può contenere più persone di quanti sono i posti letto indicati per essa.

- Attività giornaliere, per cui occorre salvare:
	- Orario di inizio
	- Orario di fine
	- Derscrizione

- Ogni attività è categorizzata come segue:
    - PASTI (tutti i cuochi partecipano alla preparazione dei pasti):
		- tipo (colazione, pranzo, merenda, cena)
		- cuoco responsabile
		- pietanza
	- FACCENDE:
		- preparazione tavoli colazione
		- spreparazione tavoli colazione
		- pulizia stoviglie tavoli colazione

		- preparazione  tavoli pranzo
		- spreparazione tavoli pranzo
		- pulizia stoviglie pranzo

		- preparazione tavoli cena
		- spreparazione tavoli cena
		- puliza stoviglie cena
	- ROUTINE (tutte le squadre partecipano a tutte le attività di routine, ogni attività di routine è caratterizzata da un nome, un responsabile e una valutazione):
		- sveglia mattiniera
		- colazione
		- attività fisica
        - attività della mattina

		- pranzo
        - attività del pomeriggio
		- merenda
		- docce
        - gioco libero

		- cena
        - attività serale
		- verifica e resoconto della giornata
	- EXTRA:
		- altro

- Ogni pietanza è definita da:
	- nome
	- descrizione
	- una determinata quantità di ingredianti.

- Lista di occorrenze intesa come lista di materiali e di ingredienti composta da:
	- nome
	- unità di 
	- numero utilizzi
	- prezzo totale
	I materiali da portare in autonomia non avranno i campi compilati, la scelta di avere dati salvati dal fatto che i materiali da portarre in autonomia sono pochi.
- Materiali da portare in autonomia e da altri specifici definiti per ogni attività.
- Ingrediente definiti da una quantità ed eventualmente degli allergeni.


------------------------

Eventuali modifiche da fare: 
- prezzo 
Chiederre al professore l'attributo derivato?

idea: quantità sul numero di pietanze da fare per pasto

QUANTITà TOTALE DEL NUMERO DI OCCORRENTI

