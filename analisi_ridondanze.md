# Operazioni:
- Aggiungere attività di routine
- Vedere materiale totale necessario

> [!NOTE]
> Le attività sono 8 al giorno, con 7 giorni di campo normalmente
> 3-4 sono le attività al giorno che normalmente hanno del materiale
> 3 sono in media i materiali necessari per un'attività

> [!NOTE]
> Costo di una lettura: 1, costo di una scrittura: 2

> [!CAUTION]
> Se il prof conferma che le riddondanze studiate vanno bene, togliere l'attributo "quantità" dallo schema?

# Frequenza delle operazioni:
- Aggiunta attività di routine: 56 volte
- Vedere materiale totale necessario: 1 volta prima della partenza

# Tabella dei volumi

| concetto           | tipo      | volume |
| ------------------ | ------    | ------ |
|Materiale           | Entità    | 50     |
|Prevede             | Relazione | 84     |
|Routine             | Entità    | 56     |


## Senza attributo derivato
### Aggiunta attività di routine

| concetto            | costrutto | accessi | tipo |
| ------------------- | --------- | ------- | ---- |
| Routine             | Entità    | 1       | W    |
| Prevede             | Relazione | 3       | W    |

Costo: (56\*4)\*2=448


### Vedere materiale totale necessario

| concetto            | costrutto | accessi   | tipo |
| ------------------- | --------- | --------- | ---- |
| Materiale           | Entità    | 1         | R    |
| Prevede             | Relazione | 84/56=1.5 | R    |

Costo: (1\*2.5)\*1=2.5


## Con attributo derivato
### Aggiunta attività di routine

| concetto            | costrutto | accessi | tipo |
| ------------------- | --------- | ------- | ---- |
| Routine             | Entità    | 1       | W    |
| Prevede             | Relazione | 3       | W    |
| Materiale           | Relazione | 3       | R    |
| Materiale           | Relazione | 3       | W    |

Costo: (56\*7)\*2+(56\*3)\*1=952


### Vedere materiale totale necessario

| concetto            | costrutto | accessi   | tipo |
| ------------------- | --------- | --------- | ---- |
| Materiale           | Entità    | 1         | R    |

Costo: (1\*1)\*1=1


## Confronto
Assenza di ridondanza:
- OP 1: 448
- OP 2: 2.5
Totale: 450.5

Presenza di ridondanza:
- OP 1: 952
- OP 2: 1
Totale: 953

## Conclusione
Non ci conviene mantere la ridondanza
