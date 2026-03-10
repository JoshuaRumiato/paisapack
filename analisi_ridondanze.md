# Operazioni:
- Aggiungere attività di routine
- Vedere materiale totale necessario
- Vedere materiale totale rimanente (query che si fa durante la settimana di campeggio dopo che sono state svolte alcune attività)(TODO)

> [!NOTE]
> Le attività sono 8 al giorno, con 7 giorni di campo normalmente
> 3-4 sono le attività al giorno che normalmente hanno del materiale
> 3 sono in media i materiali necessari per un'attività


# Tabella dei volumi

| concetto           | tipo      | volume |
| ------------------ | ------    | ------ |
|Materiale           | Entità    | 50     |
|Materiale Specifico | Entità    | 15     |
|Prevede             | Relazione | 84     |
|Routine             | Entità    | 56     |


## Senza attributo derivato
### Aggiunta attività di routine

| concetto            | costrutto | accessi | tipo |
| ------------------- | --------- | ------- | ---- |
| Routine             | Entità    | 1       | W    |
| Prevede             | Relazione | 3       | W    |
<!--| Materiale Specifico | Entità    | 3       | R    |-->


### Vedere materiale totale necessario

| concetto            | costrutto | accessi   | tipo |
| ------------------- | --------- | --------- | ---- |
| Materiale           | Entità    | 1         | R    |
| Materiale Specifico | Entità    | 1         | R    |
| Prevede             | Relazione | 84/56=1.5 | R    |

### Vedere materiale totale necessario da oggi in poi(TODO)

| concetto            | costrutto | accessi   | tipo |
| ------------------- | --------- | --------- | ---- |
| Materiale           | Entità    | 1         | R    |
| Materiale Specifico | Entità    | 1         | R    |
| Prevede             | Relazione | 84/56=1.5 | R    |
| Routine             | Entità    | 1         | R    |


## Con attributo derivato
### Aggiunta attività di routine

| concetto            | costrutto | accessi | tipo |
| ------------------- | --------- | ------- | ---- |
| Routine             | Entità    | 1       | W    |
| Prevede             | Relazione | 3       | W    |
| Materiale Specifico | Relazione | 3       | R    |
| Materiale Specifico | Relazione | 3       | W    |


### Vedere materiale totale necessario

| concetto            | costrutto | accessi   | tipo |
| ------------------- | --------- | --------- | ---- |
| Materiale           | Entità    | 1         | R    |
| Materiale Specifico | Entità    | 1         | R    |

### Vedere materiale totale necessario da oggi in poi(TODO)

| concetto            | costrutto | accessi   | tipo |
| ------------------- | --------- | --------- | ---- |
| Materiale           | Entità    | 1         | R    |
| Materiale Specifico | Entità    | 1         | R    |
| Prevede             | Relazione | 84/56=1.5 | R    |
| Routine             | Entità    | 1         | R    |