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

## Informazioni generali

Il sistema deve poter gestire un campo-scuola negli aspetti che lo caratterizzano, supportando tutte le operazioni necessarie alla loro organizzazione.

Il campo è caratterizzato da:
- un edificio avente traccia del suo indirizzo.

- una lista di partecipanti, divisi in membri dell'equipe e animati (ragazzi), caratterizati da
	- codice fiscale
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

## Gestione partecipanti

L'equipe è composta da cuochi, animatori, capi-campo (possono essere visti come animatori con speciali responsabilità) e collaboratori. Le informazioni rilevanti per ogni membro dell'equipe sono:
- numero di telefono ed email personale
- valutazione del suo operato alla fine del campo (ad esempio un voto da 1 a 5 accompagnato da un commento)

Per quanto riguarda gli animati vengono salvati:
- numero di telefono e email di un genitore o di chi ne fa le veci (da usare in caso di emergenze)

Tutti i partecipanti (equipe + ragazzi) dormono nelle camere della struttura che ospita il campo (maschi con maschi, femmine con femmine) e ogni camera ha:
- un numero identificativo di stanza
- numero di posti letto
- piano dell'edificio in cui è collocata
- animatore responsabile, che dorme al suo interno (animatori maschi nelle camere dei maschi, e animatrici nelle camere femminili)
- nessuna camera può contenere più persone di quanti sono i posti letto indicati per essa

## Squadre e attività giornaliere

Gli animati vengono divisi in squadre per la partecipazione alle attività organizzate. Ogni squadra possiede:
- un nome
- uno slogan
- un animatore responsabile
- punteggio cumulato delle attività di routine

Le squadre si mettono inoltre a disposizione per lo svolgimento di alcune faccende domestiche (gestite da turni di rotazione affinché tutte le squadre svolgano almeno una volta tutte le faccende nell'arco di una giornata).

Per le attività giornaliere occorre salvare:
- orario di inizio
- orario di fine
- derscrizione

Ogni attività è categorizzata come segue:

- PASTI (vengono preparati dai cuochi, e tutti i cuochi partecipano alla preparazione di ogni pasto):
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
- ROUTINE (tutte le squadre partecipano a tutte le attività di routine, ogni attività di routine è caratterizzata da un nome, un esponsabile e una valutazione):
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
	
Ad ogni paso viene servita una pietanza. Ogni pietanza è definita da:
- nome
- descrizione
- ingredienti (ognuno dei quali con una certa quantità).

## Gestione occorrente

Gli ingredienti per la realizzazione delle pietanze compongono, insieme ai materiali richiesti per le altre attività, la lista dell'occorrente per il campeggio. Ogni voce di questa lista è identificata da:
- nome
- unità di misura
- numero utilizzi

Fra i materiali necessari, alcuni potrebbero dover essere portati in autonomia dai partecipanti.
Esistono inoltre materiali specifici che vengono impiegati nello svolgimento di attività di routine particolari.
