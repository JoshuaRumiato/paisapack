# Progetto Database Gruppo 11 – Campo Scuola

## Descrizione del progetto

Questo progetto consiste nella progettazione e implementazione di un database per la gestione delle attività di un campo scuola. Il sistema è stato sviluppato utilizzando PostgreSQL ed è contenuto all’interno di un ambiente Docker per garantirne la portabilità e la riproducibilità.

---

## Struttura del progetto

| Percorso                  | Descrizione                                                  |
|---------------------------|--------------------------------------------------------------|
| `Relazione/`              | Documentazione del progetto e relative immagini              |
| `Diagrammi/`              | Diagrammi ER e fisico ad alta qualità                        |
| `Script/`                 | Script python di supporto per generare i dati                |
| `sql/schema_fisico.sql`   | Script SQL per la creazione dello schema del database        |
| `sql/dati_di_test.sql`    | Script SQL per l’inserimento di dati di test                 |
| `sql/queries.sql`         | Raccolta di query SQL di esempio e analisi                   |
| `sql/generate_attivita.py`| Script Python per la generazione dei dati di test            |
| `Dockerfile`              | Immagine Docker personalizzata basata su PostgreSQL          |
| `docker-compose.yml`      | Configurazione per l’orchestrazione dei container Docker     |
| `.env`                    | File di configurazione contenente credenziali e parametri DB |

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
| Propietà          | Valore             |
|-------------------|--------------------|
| POSTGRES_USER     | `admin`            |
| POSTGRES_PASSWORD | `password`         |
| POSTGRES_DB       | `database-project` |

---

## Visualizzazione Diagrammi

I diagrammi possono essere aperti con i seguenti strumenti:
- Diagramma ER: [Diagramma_er.drawio](Diagrammi/Diagramma_er.drawio), tramite [Drawio](https://www.drawio.com/).
- Schema fisico: [Schema_fisico.json](Diagrammi/Schema_fisico.json), [DrawDB](https://www.drawdb.app/).

---

## Script

Lo script Python `generate_attivita.py` genera i dati di test utilizzati nel file `dati_di_test.sql`.

## Relazione
La documentazione del progetto in formato PDF è reperibiale alla cartella [Relazione](Relazione) dove vi è possibile trovare la cartella con tutti gli schemi.

---

## Autori

- Nadal Mattia
- Polesello Kevin
- Rumiato Joshua
- Vignandel Francesco

---

## Licenza

Questo progetto è rilasciato sotto la licenza **WTFPL, Version 2 (December 2004)**.

Per il testo completo della licenza consultare il file [LICENSE](LICENSE).
