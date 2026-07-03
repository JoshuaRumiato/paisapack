-- Inserimento di un nuovo ANIMATO, con tutte le informazioni necessarie
-- questo inserimento è di un generico animato, quindi si da per scontato che alcune informazioni siano già all'interno del database: stanza con relativo responsabile, squadra con relativo animatore responsabile e allergeni
BEGIN;
INSERT INTO partecipanti (codice_fiscale, nome, cognome, luogo_nascita, foto_documento, note, numero_stanza) VALUES
    ('GRLMRC08E20H501T', 'Marco', 'Giraldi', 'Udine', 'foto_marco_giraldi.jpg', 'Allergico a glutine e lattosio', 101);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
    ('GRLMRC08E20H501T', 'parent1@email.com', '3301234567', 'Aquile Rosse');    

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
    ('GRLMRC08E20H501T', 'glutine'),
    ('GRLMRC08E20H501T', 'lattosio');
COMMIT;

-- Inserimento di una ROUTINE, con nome, supervisore, descrizione, durata, e materiali necessari.
-- Questo inserimento è di una generica attività di routine, quindi si da per scontato che alcune informazioni siano già all'interno del database: materiali, animatore supervisore, 
BEGIN;
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
    ('2026-05-12 15:00:00', '2026-05-12 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'SFRNTN93E45B789L', 'attivita del pomeriggio');

INSERT INTO routine_prevedono_materiali (data_ora_inizio_attivita, nome_materiale, quantita) VALUES
    ('2026-05-12 15:00:00', 'Pennarelli colorati', 3),
    ('2026-05-12 15:00:00', 'Quaderni', 10),
    ('2026-05-12 15:00:00', 'Materiale artistico', 2);
COMMIT;

-- Selezionare le coppie di routine che utilizzano uno stesso materiale (tutto il campo o giornaliero a nostra discrezione)
SELECT 
    r1.nome_materiale AS materiale_condiviso,
    a1.data_ora_inizio AS inizio_routine_1,
    a1.nome AS nome_routine_1,
    a2.data_ora_inizio AS inizio_routine_2,
    a2.nome AS nome_routine_2
FROM routine_prevedono_materiali r1
JOIN routine_prevedono_materiali r2 
    ON r1.nome_materiale = r2.nome_materiale 
   AND r1.data_ora_inizio_attivita < r2.data_ora_inizio_attivita  
JOIN attivita_routine a1 
    ON r1.data_ora_inizio_attivita = a1.data_ora_inizio
JOIN attivita_routine a2 
    ON r2.data_ora_inizio_attivita = a2.data_ora_inizio

-- Selezionare i cuochi che hanno supervisionato un pasto con un allergene che è contenuto in una singola pietanza
WITH allergeni_singoli AS (
    -- allergeni contenuti in una sola pietanza in tutto il database
    SELECT nome_allergene
    FROM pietanze_contengono_allergeni
    GROUP BY nome_allergene
    HAVING COUNT(nome_pietanza) = 1
)
SELECT DISTINCT 
    p.codice_fiscale,
    p.nome,
    p.cognome
FROM partecipanti p
JOIN cuochi c 
    ON p.codice_fiscale = c.codice_fiscale
JOIN attivita_pasto ap 
    ON c.codice_fiscale = ap.codice_fiscale_cuoco_supervisore
JOIN pietanze_per_pasto ppp 
    ON ap.data_ora_inizio = ppp.data_ora_inizio
JOIN pietanze_contengono_allergeni pca 
    ON ppp.nome_pietanza = pca.nome_pietanza
JOIN allergeni_singoli als 
    ON pca.nome_allergene = als.nome_allergene;


-- [ ] Trovare l'animatore/i che hanno supervisionato la routine che ha previsto la quantità maggiore di materiale.
WITH routine_con_totale AS (
    SELECT 
        data_ora_inizio_attivita,
        SUM(quantita) AS totale_quantita,
        DENSE_RANK() OVER (ORDER BY SUM(quantita) DESC) AS classifica
    FROM routine_prevedono_materiali
    GROUP BY data_ora_inizio_attivita
)
SELECT 
    p.codice_fiscale,
    p.nome,
    p.cognome,
    ar.nome AS nome_routine,
    ar.data_ora_inizio,
    r.totale_quantita
FROM routine_con_totale r
JOIN attivita_routine ar 
    ON r.data_ora_inizio_attivita = ar.data_ora_inizio
JOIN partecipanti p 
    ON ar.codice_fiscale_animatore_supervisore = p.codice_fiscale
WHERE r.classifica = 1;


-- Trovare gli animatori che hanno supervisionato solo attività che non hanno richiesto l'uso di materiale.
SELECT 
    p.codice_fiscale,
    p.nome,
    p.cognome
FROM partecipanti p
JOIN animatori a 
    ON p.codice_fiscale = a.codice_fiscale
WHERE EXISTS (
    -- L'animatore deve aver supervisionato almeno un'attività di routine
    SELECT 1 
    FROM attivita_routine ar
    WHERE ar.codice_fiscale_animatore_supervisore = a.codice_fiscale
)
AND NOT EXISTS (
    -- NON deve esistere alcuna attività da lui supervisionata che richieda materiali
    SELECT 1 
    FROM attivita_routine ar
    JOIN routine_prevedono_materiali rpm 
        ON ar.data_ora_inizio = rpm.data_ora_inizio_attivita
    WHERE ar.codice_fiscale_animatore_supervisore = a.codice_fiscale
);


-- Aggiornamento orario di una routine.
UPDATE attivita_routine
SET 
    data_ora_inizio = '2026-07-20 16:00:00',
    data_ora_fine   = '2026-07-20 17:30:00'
WHERE 
    data_ora_inizio = '2026-07-20 09:30:00';


-- Cancellazione di una ROUTINE, con conseguente eliminazione di tutte le informazioni ad essa collegate.
DELETE FROM attivita_routine WHERE data_ora_inizio = '2026-07-20 16:00:00';

