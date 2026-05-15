-- =====================================================
-- DATI DI ESEMPIO - CAMPO SCUOLA
-- =====================================================

-- ALLERGIE/ALLERGENI
INSERT INTO allergeni (nome) VALUES
('glutine'),
('lattosio'),
('uova'),
('arachidi'),
('frutta a guscio'),
('pesce'),
('molluschi'),
('sesamo');

-- EDIFICIO
INSERT INTO edificio (via, civico, cap, comune, provincia) VALUES
('Via Monte Rosa', '42', '33100', 'Udine', 'UD');

-- STANZE (3 stanze per ragazzi maschi, 3 per ragazzi femmine, 2 per staff)
INSERT INTO stanze (numero, piano, posti_letto) VALUES
(101, 1, 4),  -- piano 1, ragazzi maschi
(102, 1, 4),  -- piano 1, ragazzi maschi
(103, 1, 4),  -- piano 1, ragazzi femmine
(104, 1, 4),  -- piano 1, ragazzi femmine
(105, 2, 4),  -- piano 2, ragazzi maschi
(106, 2, 4),  -- piano 2, ragazzi femmine
(201, 2, 6),  -- piano 2, staff
(202, 2, 6);  -- piano 2, staff

-- PIETANZE
INSERT INTO pietanze (nome, descrizione) VALUES
('Pasta al ragù', 'Pasta fresca con salsa di pomodoro e carne'),
('Pollo arrosto con patate', 'Pollo al forno servito con patate roste'),
('Risotto ai funghi', 'Risotto cremoso con funghi porcini freschi'),
('Pesce al forno', 'Branzino intero cotto al forno con erbe aromatiche'),
('Uova strapazzate', 'Uova con pane tostato'),
('Frittelle di mele', 'Dolce con mele fresche e miele'),
('Minestra di verdure', 'Zuppa con verdure di stagione'),
('Pizza margherita', 'Pizza con mozzarella fresca e pomodoro'),
('Insalata mista', 'Insalata verde con ortaggi freschi');

-- ALLERGENI CONTENUTI IN PIETANZE
INSERT INTO contiene (nome_allergene, nome_pietanza) VALUES
('glutine', 'Pasta al ragù'),
('glutine', 'Uova strapazzate'),
('glutine', 'Frittelle di mele'),
('uova', 'Frittelle di mele'),
('uova', 'Uova strapazzate'),
('lattosio', 'Pizza margherita'),
('lattosio', 'Risotto ai funghi'),
('pesce', 'Pesce al forno'),
('glutine', 'Pizza margherita');

-- MATERIALI
INSERT INTO materiali (nome, unita_misura, numero_utilizzi, portare_in_autonomia) VALUES
('Pallone calcio', 'pezzo', 20, false),
('Palle da basket', 'pezzo', 15, false),
('Corde per corda', 'metro', 50, false),
('Pennarelli colorati', 'scatola', 30, true),
('Quaderni', 'pacco', 40, true),
('Zaino da escursione', 'pezzo', 30, false),
('Torce elettriche', 'pezzo', 20, false),
('Coperte per outdoor', 'pezzo', 25, false),
('Giochi da tavolo', 'pezzo', 15, false),
('Materiale artistico', 'kit', 20, true),
('Tende e sacchi a pelo', 'pezzo', 30, false),
('Kit primo soccorso', 'pezzo', 3, false);

-- =====================================================
-- PARTECIPANTI - ANIMATORI
-- =====================================================

-- Animatore 1 - Capo campo
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('RSSMRC85H21H501D', 'Marco', 'Rossi', 'M', '1985-06-21', 'Udine', 'foto_marco_rossi.jpg', 'Capo campo - Esperienza 10 anni', 201);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('RSSMRC85H21H501D', 'marco.rossi@email.com', '3391234567', NULL, NULL, true);

-- Animatore 2 - Maschio
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('BNCGVN92A15D612H', 'Giovanni', 'Bianchi', 'M', '1992-01-15', 'Trieste', 'foto_giovanni_bianchi.jpg', 'Animatore responsabile stanza 105', 105);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('BNCGVN92A15D612H', 'giovanni.bianchi@email.com', '3392345678', NULL, NULL, false);

-- Animatore 3 - Maschio
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('VRDFRC94B08C351K', 'Francesco', 'Verdi', 'M', '1994-02-08', 'Gorizia', 'foto_francesco_verdi.jpg', 'Animatore responsabile stanza 101', 101);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('VRDFRC94B08C351K', 'francesco.verdi@email.com', '3393456789', NULL, NULL, false);

-- Animatrice 1 - Femmina
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('ROSSLA91D50C573F', 'Laura', 'Rossi', 'F', '1991-04-20', 'Udine', 'foto_laura_rossi.jpg', 'Animatrice responsabile stanza 103', 103);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('ROSSLA91D50C573F', 'laura.rossi@email.com', '3394567890', NULL, NULL, false);

-- Animatrice 2 - Femmina
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('SFRNTN93E45B789L', 'Antonia', 'Sforza', 'F', '1993-05-25', 'Pordenone', 'foto_antonia_sforza.jpg', 'Animatrice responsabile stanza 106', 106);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('SFRNTN93E45B789L', 'antonia.sforza@email.com', '3395678901', NULL, NULL, false);

-- Animatrice 3 - Femmina
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('PLNNDR89F12D999Z', 'Andrea', 'Palone', 'F', '1989-06-15', 'Cervignano', 'foto_andrea_palone.jpg', 'Animatrice responsabile stanza 104', 104);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('PLNNDR89F12D999Z', 'andrea.palone@email.com', '3396789012', NULL, NULL, false);

-- =====================================================
-- PARTECIPANTI - CUOCHI
-- =====================================================

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('MRNMRT88C30E506G', 'Mauro', 'Marino', 'M', '1988-03-30', 'Udine', 'foto_mauro_marino.jpg', 'Cuoco esperto, cucina italiana', 201);

INSERT INTO cuochi (codice_fiscale, email, telefono, voto, commento) VALUES
('MRNMRT88C30E506G', 'mauro.marino@email.com', '3397890123', NULL, NULL);

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('BRNNNA91A65F234P', 'Anna', 'Brun', 'F', '1991-01-15', 'Udine', 'foto_anna_brun.jpg', 'Cuoca specializzata in piatti vegetariani', 201);

INSERT INTO cuochi (codice_fiscale, email, telefono, voto, commento) VALUES
('BRNNNA91A65F234P', 'anna.brun@email.com', '3398901234', NULL, NULL);

-- =====================================================
-- PARTECIPANTI - COLLABORATORI
-- =====================================================

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('LCCCCR87H09G456D', 'Claudio', 'Locchi', 'M', '1987-06-09', 'Monfalcone', 'foto_claudio_locchi.jpg', 'Supporto logistico e pulizia', 202);

INSERT INTO collaboratori (codice_fiscale, email, telefono, voto, commento) VALUES
('LCCCCR87H09G456D', 'claudio.locchi@email.com', '3399012345', NULL, NULL);

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('PLCSMN90B20H567K', 'Simone', 'Polci', 'M', '1990-02-20', 'Palmanova', 'foto_simone_polci.jpg', 'Infermiere - Supporto medico', 202);

INSERT INTO collaboratori (codice_fiscale, email, telefono, voto, commento) VALUES
('PLCSMN90B20H567K', 'simone.polci@email.com', '3390112345', NULL, NULL);

-- =====================================================
-- PARTECIPANTI - RAGAZZI (ANIMATI)
-- =====================================================

-- Ragazzi maschi
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('GRLMRC08E20H501T', 'Marco', 'Giraldi', 'M', '2008-05-20', 'Udine', 'foto_marco_giraldi.jpg', 'Allergico a glutine e lattosio', 101);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('GRLMRC08E20H501T', 'parent1@email.com', '3301234567', 'Aquile Rosse');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('GRLMRC08E20H501T', 'glutine'),
('GRLMRC08E20H501T', 'lattosio');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('RSSLCA09A15H612V', 'Luca', 'Rossi', 'M', '2009-01-15', 'Udine', 'foto_luca_rossi.jpg', 'Nessuna allergia', 101);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('RSSLCA09A15H612V', 'parent2@email.com', '3302345678', 'Aquile Rosse');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('GRGNTL10C08H999X', 'Natale', 'Grignaffini', 'M', '2010-03-08', 'Trieste', 'foto_natale_grignaffini.jpg', 'Allergico a arachidi', 102);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('GRGNTL10C08H999X', 'parent3@email.com', '3303456789', 'Tigri Blu');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('GRGNTL10C08H999X', 'arachidi');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('BCCNRD09B12C234Z', 'Nardo', 'Bocchi', 'M', '2009-02-12', 'Gorizia', 'foto_nardo_bocchi.jpg', 'Asma lieve - ha inalatore con sè', 102);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('BCCNRD09B12C234Z', 'parent4@email.com', '3304567890', 'Tigri Blu');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('VRDPOL08D25B456W', 'Paolo', 'Verdi', 'M', '2008-04-25', 'Monfalcone', 'foto_paolo_verdi.jpg', 'Intolleranza al lattosio', 105);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('VRDPOL08D25B456W', 'parent5@email.com', '3305678901', 'Falchi Gialli');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('VRDPOL08D25B456W', 'lattosio');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('MRNLND09F10A789Y', 'Leonardo', 'Marinelli', 'M', '2009-06-10', 'Udine', 'foto_leonardo_marinelli.jpg', 'Nessuna allergia particlare', 105);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('MRNLND09F10A789Y', 'parent6@email.com', '3306789012', 'Falchi Gialli');

-- Ragazze femmine
INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('ROSSMRA08H20D001Z', 'Maria', 'Rossi', 'F', '2008-08-20', 'Udine', 'foto_maria_rossi.jpg', 'Vegana - nessun prodotto animale', 103);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('ROSSMRA08H20D001Z', 'parent7@email.com', '3307890123', 'Stelle Rosse');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('ROSSMRA08H20D001Z', 'uova'),
('ROSSMRA08H20D001Z', 'lattosio');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('BNCSRL09C15E234A', 'Sara', 'Bianchi', 'F', '2009-03-15', 'Trieste', 'foto_sara_bianchi.jpg', 'Nessuna allergia', 103);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('BNCSRL09C15E234A', 'parent8@email.com', '3308901234', 'Stelle Rosse');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('VRDFNN10A10F567B', 'Francesca', 'Verdi', 'F', '2010-01-10', 'Pordenone', 'foto_francesca_verdi.jpg', 'Allergia a frutta a guscio', 104);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('VRDFNN10A10F567B', 'parent9@email.com', '3309012345', 'Pantere Nere');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('VRDFNN10A10F567B', 'frutta a guscio');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('PLTGNN09B20G789C', 'Gina', 'Poltrone', 'F', '2009-02-20', 'Cervignano', 'foto_gina_poltrone.jpg', 'Nessuna allergia', 104);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('PLTGNN09B20G789C', 'parent10@email.com', '3300123456', 'Pantere Nere');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('MZNLSA08D05H012D', 'Alessia', 'Mazzoni', 'F', '2008-04-05', 'Monfalcone', 'foto_alessia_mazzoni.jpg', 'Allergia a uova', 106);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('MZNLSA08D05H012D', 'parent11@email.com', '3301234567', 'Leonesse d''Oro');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('MZNLSA08D05H012D', 'uova');

INSERT INTO partecipanti (codice_fiscale, nome, cognome, sesso, data_nascita, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('SPNVRA09E15I234E', 'Veronica', 'Spina', 'F', '2009-05-15', 'Gorizia', 'foto_veronica_spina.jpg', 'Nessuna allergia', 106);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('SPNVRA09E15I234E', 'parent12@email.com', '3302345678', 'Leonesse d''Oro');

-- =====================================================
-- SQUADRE
-- =====================================================

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Aquile Rosse', 'Vola alto con noi!', 0, 'VRDFRC94B08C351K');

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Tigri Blu', 'Forti come la tempesta!', 0, 'BNCGVN92A15D612H');

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Falchi Gialli', 'Veloci come il sole!', 0, 'VRDFRC94B08C351K');

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Stelle Rosse', 'Brilliamo insieme!', 0, 'ROSSLA91D50C573F');

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Pantere Nere', 'Eleganti e forti!', 0, 'SFRNTN93A25B456M');

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Leonesse d''Oro', 'Orgogliose e unite!', 0, 'PLNNDR89F12D999Z');

-- =====================================================
-- ATTIVITÀ - PASTI
-- =====================================================

-- Colazione - Lunedì
INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore, nome_pietanza) VALUES
('2026-05-01 12:00:00', '2026-05-01 11:30:00', 'colazione', 'Colazione con cornetti freschi e caffè', 'MRNMRT88C30E506G', 'Uova strapazzate');

-- Pranzo - Lunedì
INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore, nome_pietanza) VALUES
('2024-06-24 12:30:00', '2024-06-24 13:30:00', 'pranzo', 'Primo piatto e contorno', 'BRNNNA91A65F234P', 'Pasta al ragù');

-- Merenda - Lunedì
INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore, nome_pietanza) VALUES
('2024-06-24 15:30:00', '2024-06-24 16:00:00', 'merenda', 'Frutta e biscotti', 'MRNMRT88C30E506G', 'Insalata mista');

-- Cena - Lunedì
INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore, nome_pietanza) VALUES
('2024-06-24 19:30:00', '2024-06-24 20:30:00', 'cena', 'Cena leggera', 'BRNNNA91A65F234P', 'Minestra di verdure');

-- Colazione - Martedì
INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore, nome_pietanza) VALUES
('2024-06-25 07:30:00', '2024-06-25 08:30:00', 'colazione', 'Colazione con latte e cereali', 'MRNMRT88C30E506G', 'Uova strapazzate');

-- Pranzo - Martedì
INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore, nome_pietanza) VALUES
('2024-06-25 12:30:00', '2024-06-25 13:30:00', 'pranzo', 'Pollo arrosto con contorni', 'BRNNNA91A65F234P', 'Pollo arrosto con patate');

-- =====================================================
-- ATTIVITÀ - ROUTINE
-- =====================================================

-- Sveglia - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 07:00:00', '2024-06-24 07:30:00', 'Sveglia con musica allegra', 'Sveglia Lunedì', 'Buon ritmo, tutti svegli puntualmente', 'RSSMRC85H21H501D', 'sveglia');

-- Attività fisica - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 09:00:00', '2024-06-24 10:30:00', 'Giochi di squadra e esercizi di riscaldamento', 'Attività fisica Lunedì', 'Tutti i ragazzi entusiasti e partecipative', 'BNCGVN92A15D612H', 'attivita fisica');

-- Attività della mattina - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 10:45:00', '2024-06-24 12:15:00', 'Laboratorio creativo di disegno e pittura', 'Laboratorio creativo Lunedì', 'Ottima partecipazione, grandi capolavori realizzati', 'ROSSLA91D50C573F', 'attivita della mattina');

-- Attività del pomeriggio - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 14:00:00', '2024-06-24 15:30:00', 'Giochi da tavolo e strategia', 'Giochi strategici Lunedì', 'Concentrazione alta, molti insegnamenti di fair play', 'VRDFRC94B08C351K', 'attivita del pomeriggio');

-- Doccia - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 17:30:00', '2024-06-24 18:30:00', 'Doccia e igiene personale', 'Doccia Lunedì', 'Buon ordine e puntualità', 'SFRNTN93A25B456M', 'doccia');

-- Gioco libero - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 20:45:00', '2024-06-24 21:30:00', 'Tempo libero in cortile e giochi spontanei', 'Gioco libero Lunedì', 'Divertimento spontaneo, molte risate', 'PLNNDR89F12D999Z', 'gioco libero');

-- Attività serale - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 21:45:00', '2024-06-24 22:30:00', 'Canzoni e balli intorno al fuoco (virtuale)', 'Serata cantanti Lunedì', 'Cantati inni del campo con entusiasmo', 'RSSMRC85H21H501D', 'attivita serale');

-- Verifica e resoconto della giornata - Lunedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-24 22:30:00', '2024-06-24 23:00:00', 'Resoconto della giornata e assegnazione punti squadra', 'Resoconto Lunedì', 'Discussione partecipata, alcuni punti assegnati equamente', 'RSSMRC85H21H501D', 'verifica e resoconto della giornata');

-- Sveglia - Martedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-25 07:00:00', '2024-06-25 07:30:00', 'Sveglia con musica allegra', 'Sveglia Martedì', 'Tutti svegli puntualmente', 'RSSMRC85H21H501D', 'sveglia');

-- Attività fisica - Martedì
INSERT INTO attivita_routine (data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine) VALUES
('2024-06-25 09:00:00', '2024-06-25 10:30:00', 'Partita di pallone e corsa ad ostacoli', 'Attività fisica Martedì', 'Partecipazione entusiasta di tutti', 'BNCGVN92A15D612H', 'attivita fisica');

-- =====================================================
-- ATTIVITÀ - FACCENDE
-- =====================================================

-- Faccende lunedì mattina - Aquile Rosse
INSERT INTO attivita_faccende (data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda) VALUES
('2024-06-24 08:40:00', '2024-06-24 09:00:00', 'Preparazione tavoli colazione', 'Setup tavoli con tovaglioli e posate', 'Aquile Rosse', 'preparazione tavoli colazione');

-- Spreparazione colazione - Tigri Blu
INSERT INTO attivita_faccende (data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda) VALUES
('2024-06-24 08:40:00', '2024-06-24 08:50:00', 'Spreparazione tavoli colazione', 'Raccolta di stoviglie e pulizia', 'Tigri Blu', 'spreparazione tavoli colazione');

-- Pulizia stoviglie colazione - Falchi Gialli
INSERT INTO attivita_faccende (data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda) VALUES
('2024-06-24 08:50:00', '2024-06-24 09:20:00', 'Pulizia stoviglie tavoli colazione', 'Lavaggio piatti e bicchieri', 'Falchi Gialli', 'pulizia stoviglie tavoli colazione');

-- Preparazione tavoli pranzo - Stelle Rosse
INSERT INTO attivita_faccende (data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda) VALUES
('2024-06-24 12:15:00', '2024-06-24 12:30:00', 'Preparazione tavoli pranzo', 'Setup tavoli pranzo', 'Stelle Rosse', 'preparazione tavoli pranzo');

-- Spreparazione pranzo - Pantere Nere
INSERT INTO attivita_faccende (data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda) VALUES
('2024-06-24 13:35:00', '2024-06-24 13:50:00', 'Spreparazione tavoli pranzo', 'Raccolta piatti dal pranzo', 'Pantere Nere', 'spreparazione tavoli pranzo');

-- Pulizia stoviglie pranzo - Leonesse d'Oro
INSERT INTO attivita_faccende (data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda) VALUES
('2024-06-24 13:50:00', '2024-06-24 14:20:00', 'Pulizia stoviglie pranzo', 'Lavaggio pentole e piatti pranzo', 'Leonesse d''Oro', 'pulizia stoviglie pranzo');

-- =====================================================
-- MATERIALI IN ATTIVITÀ ROUTINE
-- =====================================================

INSERT INTO prevede (data_ora_inizio_attivita, nome_materiale, quantita) VALUES
('2024-06-24 09:00:00', 'Pallone calcio', 1),
('2024-06-24 09:00:00', 'Palle da basket', 2);

INSERT INTO prevede (data_ora_inizio_attivita, nome_materiale, quantita) VALUES
('2024-06-24 10:45:00', 'Pennarelli colorati', 2),
('2024-06-24 10:45:00', 'Quaderni', 15);

INSERT INTO prevede (data_ora_inizio_attivita, nome_materiale, quantita) VALUES
('2024-06-24 14:00:00', 'Giochi da tavolo', 3);

INSERT INTO prevede (data_ora_inizio_attivita, nome_materiale, quantita) VALUES
('2024-06-25 09:00:00', 'Pallone calcio', 1),
('2024-06-25 09:00:00', 'Corde per corda', 5);

-- =====================================================
-- ATTIVITÀ EXTRA
-- =====================================================

INSERT INTO attivita_extra (data_ora_inizio, data_ora_fine, tipo, descrizione) VALUES
('2024-06-24 16:00:00', '2024-06-24 17:15:00', 'Escursione', 'Escursione guidata al bosco vicino con osservazione della natura');

INSERT INTO attivita_extra (data_ora_inizio, data_ora_fine, tipo, descrizione) VALUES
('2024-06-25 14:30:00', '2024-06-25 16:30:00', 'Laboratorio', 'Laboratorio di ceramica con artigiano esterno');

INSERT INTO attivita_extra (data_ora_inizio, data_ora_fine, tipo, descrizione) VALUES
('2024-06-26 18:00:00', '2024-06-26 19:30:00', 'Spettacolo', 'Spettacolo di teatro improvvisato dei ragazzi');

-- =====================================================
-- SUMMARY: Inseriti i dati per un campo-scuola completo
-- =====================================================
-- Edificio: 1 struttura
-- Stanze: 8 (4 per ragazzi, 2 per staff)
-- Partecipanti: 20 (6 animatori, 2 cuochi, 2 collaboratori, 10 ragazzi)
-- Squadre: 6
-- Allergie: 8 tipi
-- Pasti: 6 organizzati (colazione, pranzo, merenda, cena)
-- Attività routine: 18 (lunedì e martedì)
-- Attività faccende: 6
-- Attività extra: 3
-- Materiali: 12 voci