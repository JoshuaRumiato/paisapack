# Progetto Database – Campo Scuola

## Descrizione del progetto

Questo progetto consiste nella progettazione e implementazione di un database per la gestione delle attività di un campo scuola. Il sistema è stato sviluppato utilizzando PostgreSQL ed è contenuto all’interno di un ambiente Docker per garantirne la portabilità e la riproducibilità.

---

## Struttura del progetto

| Percorso                  | Descrizione                                                     |
|---------------------------|-----------------------------------------------------------------|
| `Relazione/`              | Documentazione del progetto e relative immagini                 |
| `sql/schema_fisico.sql`   | Script SQL per la creazione dello schema del database           |
| `sql/dati_di_test.sql`    | Script SQL per l’inserimento di dati di test                    |
| `sql/queries.sql`         | Raccolta di query SQL di esempio e analisi                      |
| `sql/generate_attivita.py`| Script Python per la generazione dei dati di test               |
| `Dockerfile`              | Immagine Docker personalizzata basata su PostgreSQL             |
| `docker-compose.yml`      | Configurazione per l’orchestrazione dei container Docker        |
| `.env`                    | File di configurazione contenente credenziali e parametri DB    |

---

## Requisiti

Per eseguire il progetto è necessario avere installati:
- Docker
- Docker Compose

---

## Installazione ed esecuzione

### Avvio del sistema

Per creare e avviare il container:

```bash
docker compose up -d --build
```

### Arresto del sistema

Per terminare ed eliminare il container:

```bash
docker compose down
```

## Configurazione del database
Il database viene inizializzato con i seguenti parametri:
| Propietà          | Valore            |
|-------------------|-------------------|
| POSTGRES_USER     | `admin`            |
| POSTGRES_PASSWORD | `password`         |
| POSTGRES_DB       | `database-project` |

# TODO
- [ ] aggiungere percorsi Relazione
