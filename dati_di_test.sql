-- =====================================================
-- DATI DI ESEMPIO - CAMPO SCUOLA
-- =====================================================
-- EDIFICIO
INSERT INTO edificio (via, civico, cap, comune, provincia) VALUES
('Via Monte Rosa', '42', '33100', 'Udine', 'UD');

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

INSERT INTO pietanze (nome, descrizione) VALUES
('Pasta al ragù', 'Pasta fresca con salsa di pomodoro e carne'),
('Pollo arrosto con patate', 'Pollo al forno servito con patate arrosto'),
('Risotto ai funghi', 'Risotto cremoso con funghi porcini freschi'),
('Pesce al forno', 'Branzino intero cotto al forno con erbe aromatiche'),
('Uova strapazzate', 'Uova con pane tostato'),
('Frittelle di mele', 'Dolce con mele fresche e miele'),
('Minestra di verdure', 'Zuppa con verdure di stagione'),
('Pizza margherita', 'Pizza con mozzarella fresca e pomodoro'),
('Insalata mista', 'Insalata verde con ortaggi freschi'),
('Lasagne alla bolognese', 'Lasagne con ragù di carne e besciamella'),
('Gnocchi al pesto', 'Gnocchi di patate con pesto alla genovese'),
('Tagliata di manzo', 'Manzo alla griglia servito con rucola e grana'),
('Spaghetti alle vongole', 'Spaghetti con vongole fresche e prezzemolo'),
('Melanzane alla parmigiana', 'Melanzane gratinate con pomodoro e formaggio'),
('Tiramisù', 'Dolce al caffè con mascarpone e cacao'),
('Cheesecake ai frutti di bosco', 'Torta cremosa con frutti di bosco freschi'),
('Hamburger con patatine', 'Hamburger di manzo servito con patatine fritte'),
('Zuppa di lenticchie', 'Zuppa calda con lenticchie e verdure'),
('Calamari fritti', 'Calamari impanati e fritti'),
('Cous cous vegetariano', 'Cous cous con verdure speziate'),
('Carbonara', 'Pasta con uova, guanciale e pecorino'),
('Mozzarella in carrozza', 'Pane fritto ripieno di mozzarella'),
('Pancake con sciroppo d’acero', 'Pancake soffici serviti con sciroppo'),
('Salmone alla griglia', 'Filetto di salmone con limone ed erbe');

INSERT INTO pietanze_contengono_allergeni (nome_allergene, nome_pietanza) VALUES
('glutine', 'Pasta al ragù'),
('glutine', 'Uova strapazzate'),
('glutine', 'Frittelle di mele'),
('uova', 'Frittelle di mele'),
('uova', 'Uova strapazzate'),
('lattosio', 'Pizza margherita'),
('lattosio', 'Risotto ai funghi'),
('pesce', 'Pesce al forno'),
('glutine', 'Pizza margherita'),
('glutine', 'Lasagne alla bolognese'),
('lattosio', 'Lasagne alla bolognese'),
('glutine', 'Gnocchi al pesto'),
('frutta a guscio', 'Gnocchi al pesto'),
('lattosio', 'Gnocchi al pesto'),
('lattosio', 'Tagliata di manzo'),
('glutine', 'Spaghetti alle vongole'),
('molluschi', 'Spaghetti alle vongole'),
('lattosio', 'Melanzane alla parmigiana'),
('uova', 'Tiramisù'),
('lattosio', 'Tiramisù'),
('glutine', 'Tiramisù'),
('lattosio', 'Cheesecake ai frutti di bosco'),
('glutine', 'Cheesecake ai frutti di bosco'),
('glutine', 'Hamburger con patatine'),
('molluschi', 'Calamari fritti'),
('glutine', 'Calamari fritti'),
('glutine', 'Cous cous vegetariano'),
('glutine', 'Carbonara'),
('uova', 'Carbonara'),
('lattosio', 'Carbonara'),
('glutine', 'Mozzarella in carrozza'),
('lattosio', 'Mozzarella in carrozza'),
('uova', 'Mozzarella in carrozza'),
('glutine', 'Pancake con sciroppo d’acero'),
('uova', 'Pancake con sciroppo d’acero'),
('lattosio', 'Pancake con sciroppo d’acero'),
('pesce', 'Salmone alla griglia');

-- MATERIALI
INSERT INTO materiali (nome, unita_misura, numero_utilizzi, portare_in_autonomia) VALUES
('Pallone calcio', 'pezzo', 20, false),
('Palle da basket', 'pezzo', 15, false),
('Corda', 'metro', 50, false),
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
INSERT INTO partecipanti (codice_fiscale, nome, cognome, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('RSSMRC85H21H501D', 'Marco', 'Rossi', 'Udine', 'foto_marco_rossi.jpg', 'Capo campo - Esperienza 10 anni', 201),
('BNCGVN92A15D612H', 'Giovanni', 'Bianchi', 'Trieste', 'foto_giovanni_bianchi.jpg', 'Animatore responsabile stanza 105', 105),
('VRDFRC94B08C351K', 'Francesco', 'Verdi', 'Gorizia', 'foto_francesco_verdi.jpg', 'Animatore responsabile stanza 101', 101),
('ROSSLA91D50C573F', 'Laura', 'Rossi', 'Udine', 'foto_laura_rossi.jpg', 'Animatrice responsabile stanza 103', 103),
('SFRNTN93E45B789L', 'Antonia', 'Sforza', 'Pordenone', 'foto_antonia_sforza.jpg', 'Animatrice responsabile stanza 106', 106),
('PLNNDR89E12D999Z', 'Andrea', 'Palone', 'Cervignano', 'foto_andrea_palone.jpg', 'Animatrice responsabile stanza 104', 104);

INSERT INTO animatori (codice_fiscale, email, telefono, voto, commento, capocampo) VALUES
('RSSMRC85H21H501D', 'marco.rossi@email.com', '3391234567', NULL, NULL, true),
('BNCGVN92A15D612H', 'giovanni.bianchi@email.com', '3392345678', NULL, NULL, false),
('VRDFRC94B08C351K', 'francesco.verdi@email.com', '3393456789', NULL, NULL, false),
('ROSSLA91D50C573F', 'laura.rossi@email.com', '3394567890', NULL, NULL, false),
('SFRNTN93E45B789L', 'antonia.sforza@email.com', '3395678901', NULL, NULL, false),
('PLNNDR89E12D999Z', 'andrea.palone@email.com', '3396789012', NULL, NULL, false);

-- =====================================================
-- PARTECIPANTI - CUOCHI
-- =====================================================

INSERT INTO partecipanti (codice_fiscale, nome, cognome, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('MRNMRT88C30E506G', 'Mauro', 'Marino', 'Udine', 'foto_mauro_marino.jpg', 'Cuoco esperto, cucina italiana', 201),
('BRNNNA91A65F234P', 'Anna', 'Brun', 'Udine', 'foto_anna_brun.jpg', 'Cuoca specializzata in piatti vegetariani', 201);

INSERT INTO cuochi (codice_fiscale, email, telefono, voto, commento) VALUES
('BRNNNA91A65F234P', 'anna.brun@email.com', '3398901234', NULL, NULL),
('MRNMRT88C30E506G', 'mauro.marino@email.com', '3397890123', NULL, NULL);

-- =====================================================
-- PARTECIPANTI - COLLABORATORI
-- =====================================================

INSERT INTO partecipanti (codice_fiscale, nome, cognome, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('LCCCCR87H09G456D', 'Claudio', 'Locchi', 'Monfalcone', 'foto_claudio_locchi.jpg', 'Supporto logistico e pulizia', 202),
('PLCSMN90B20H567K', 'Simone', 'Polci', 'Palmanova', 'foto_simone_polci.jpg', 'Infermiere - Supporto medico', 202);

INSERT INTO collaboratori (codice_fiscale, email, telefono, voto, commento) VALUES
('PLCSMN90B20H567K', 'simone.polci@email.com', '3390112345', NULL, NULL),
('LCCCCR87H09G456D', 'claudio.locchi@email.com', '3399012345', NULL, NULL);

-- =====================================================
-- SQUADRE
-- =====================================================

INSERT INTO squadre (nome, slogan, punteggio, codice_fiscale_animatore_responsabile) VALUES
('Aquile Rosse', 'Vola alto con noi!', 0, 'VRDFRC94B08C351K'),
('Tigri Blu', 'Forti come la tempesta!', 0, 'BNCGVN92A15D612H'),
('Falchi Gialli', 'Veloci come il sole!', 0, 'VRDFRC94B08C351K'),
('Stelle Rosse', 'Brilliamo insieme!', 0, 'ROSSLA91D50C573F'),
('Pantere Nere', 'Eleganti e forti!', 0, 'SFRNTN93E45B789L'),
('Leonesse d''Oro', 'Orgogliose e unite!', 0, 'PLNNDR89E12D999Z');

-- =====================================================
-- PARTECIPANTI - RAGAZZI (ANIMATI)
-- =====================================================

-- Ragazzi maschi
INSERT INTO partecipanti (codice_fiscale, nome, cognome, luogo_nascita, foto_documento, note, numero_stanza) VALUES
('GRLMRC08E20H501T', 'Marco', 'Giraldi', 'Udine', 'foto_marco_giraldi.jpg', 'Allergico a glutine e lattosio', 101),
('RSSLCA09A15H612V', 'Luca', 'Rossi', 'Udine', 'foto_luca_rossi.jpg', 'Nessuna allergia', 101),
('GRGNTL10C08H999X', 'Natale', 'Grignaffini', 'Trieste', 'foto_natale_grignaffini.jpg', 'Allergico a arachidi', 102),
('BCCNRD09B12C234Z', 'Nardo', 'Bocchi', 'Gorizia', 'foto_nardo_bocchi.jpg', 'Asma lieve - ha inalatore con sè', 102),
('VRDPOL08D25B456W', 'Paolo', 'Verdi', 'Monfalcone', 'foto_paolo_verdi.jpg', 'Intolleranza al lattosio', 105),
('MRNLND09R10A789Y', 'Leonardo', 'Marinelli', 'Udine', 'foto_leonardo_marinelli.jpg', 'Nessuna allergia particolare', 105),
('ROSSMR08H20D001Z', 'Maria', 'Rossi', 'Udine', 'foto_maria_rossi.jpg', 'Vegana - nessun prodotto animale', 103),
('BNCSRL09C15E234A', 'Sara', 'Bianchi', 'Trieste', 'foto_sara_bianchi.jpg', 'Nessuna allergia', 103),
('VRDFNN10A10F567B', 'Francesca', 'Verdi', 'Pordenone', 'foto_francesca_verdi.jpg', 'Allergia a frutta a guscio', 104),
('PLTGNN09B20G789C', 'Gina', 'Poltrone', 'Cervignano', 'foto_gina_poltrone.jpg', 'Nessuna allergia', 104),
('MZNLSA08D05H012D', 'Alessia', 'Mazzoni', 'Monfalcone', 'foto_alessia_mazzoni.jpg', 'Allergia a uova', 106),
('SPNVRA09E15I234E', 'Veronica', 'Spina', 'Gorizia', 'foto_veronica_spina.jpg', 'Nessuna allergia', 106);

INSERT INTO animati (codice_fiscale, email_genitore, telefono_genitore, nome_squadra) VALUES
('GRLMRC08E20H501T', 'parent1@email.com', '3301234567', 'Aquile Rosse'),
('RSSLCA09A15H612V', 'parent2@email.com', '3302345678', 'Aquile Rosse'),
('GRGNTL10C08H999X', 'parent3@email.com', '3303456789', 'Tigri Blu'),
('BCCNRD09B12C234Z', 'parent4@email.com', '3304567890', 'Tigri Blu'),
('VRDPOL08D25B456W', 'parent5@email.com', '3305678901', 'Falchi Gialli'),
('MRNLND09R10A789Y', 'parent6@email.com', '3306789012', 'Falchi Gialli'),
('ROSSMR08H20D001Z', 'parent7@email.com', '3307890123', 'Stelle Rosse'),
('BNCSRL09C15E234A', 'parent8@email.com', '3308901234', 'Stelle Rosse'),
('VRDFNN10A10F567B', 'parent9@email.com', '3309012345', 'Pantere Nere'),
('PLTGNN09B20G789C', 'parent10@email.com', '3300123456', 'Pantere Nere'),
('MZNLSA08D05H012D', 'parent11@email.com', '3301234567', 'Leonesse d''Oro'),
('SPNVRA09E15I234E', 'parent12@email.com', '3302345678', 'Leonesse d''Oro');

INSERT INTO allergico (codice_fiscale_partecipante, nome_allergene) VALUES
('GRLMRC08E20H501T', 'glutine'),
('GRLMRC08E20H501T', 'lattosio'),
('GRGNTL10C08H999X', 'arachidi'),
('VRDPOL08D25B456W', 'lattosio'),
('ROSSMR08H20D001Z', 'uova'),
('ROSSMR08H20D001Z', 'lattosio'),
('VRDFNN10A10F567B', 'frutta a guscio'),
('MZNLSA08D05H012D', 'uova');

-- =====================================================
-- ATTIVITÀ - PASTI
-- =====================================================

INSERT INTO attivita_pasto (data_ora_inizio, data_ora_fine, tipo, descrizione, codice_fiscale_cuoco_supervisore) VALUES
  ('2026-05-06 08:00:00', '2026-05-06 09:00:00', 'Colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-06 12:30:00', '2026-05-06 13:30:00', 'Pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-06 19:30:00', '2026-05-06 20:30:00', 'Cena', 'Pasto serale', 'MRNMRT88C30E506G'),

  ('2026-05-07 08:00:00', '2026-05-07 09:00:00', 'Colazione', 'Pasto mattutino', 'BRNNNA91A65F234P'),
  ('2026-05-07 12:30:00', '2026-05-07 13:30:00', 'Pranzo', 'Pasto pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-07 19:30:00', '2026-05-07 20:30:00', 'Cena', 'Pasto serale', 'BRNNNA91A65F234P'),

  ('2026-05-08 08:00:00', '2026-05-08 09:00:00', 'Colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-08 12:30:00', '2026-05-08 13:30:00', 'Pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-08 19:30:00', '2026-05-08 20:30:00', 'Cena', 'Pasto serale', 'MRNMRT88C30E506G'),

  ('2026-05-09 08:00:00', '2026-05-09 09:00:00', 'Colazione', 'Pasto mattutino', 'BRNNNA91A65F234P'),
  ('2026-05-09 12:30:00', '2026-05-09 13:30:00', 'Pranzo', 'Pasto pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-09 19:30:00', '2026-05-09 20:30:00', 'Cena', 'Pasto serale', 'BRNNNA91A65F234P'),

  ('2026-05-10 08:00:00', '2026-05-10 09:00:00', 'Colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-10 12:30:00', '2026-05-10 13:30:00', 'Pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-10 19:30:00', '2026-05-10 20:30:00', 'Cena', 'Pasto serale', 'MRNMRT88C30E506G');

-- =====================================================
-- PIETANZE PER PASTO
-- =====================================================
INSERT INTO pietanze_per_pasto (data_ora_inizio, nome_pietanza) VALUES
  ('2026-05-06 08:00:00', 'Uova strapazzate'),
  ('2026-05-06 08:00:00', 'Pancake con sciroppo d’acero'),
  ('2026-05-06 08:00:00', 'Insalata mista'),

  ('2026-05-06 12:30:00', 'Pasta al ragù'),
  ('2026-05-06 12:30:00', 'Insalata mista'),
  ('2026-05-06 12:30:00', 'Minestra di verdure'),

  ('2026-05-06 19:30:00', 'Pollo arrosto con patate'),
  ('2026-05-06 19:30:00', 'Zuppa di lenticchie'),
  ('2026-05-06 19:30:00', 'Tiramisù'),

  ('2026-05-07 08:00:00', 'Uova strapazzate'),
  ('2026-05-07 08:00:00', 'Mozzarella in carrozza'),
  ('2026-05-07 08:00:00', 'Insalata mista'),

  ('2026-05-07 12:30:00', 'Risotto ai funghi'),
  ('2026-05-07 12:30:00', 'Calamari fritti'),
  ('2026-05-07 12:30:00', 'Insalata mista'),

  ('2026-05-07 19:30:00', 'Spaghetti alle vongole'),
  ('2026-05-07 19:30:00', 'Insalata mista'),
  ('2026-05-07 19:30:00', 'Cheesecake ai frutti di bosco'),

  ('2026-05-08 08:00:00', 'Pancake con sciroppo d’acero'),
  ('2026-05-08 08:00:00', 'Uova strapazzate'),
  ('2026-05-08 08:00:00', 'Insalata mista'),

  ('2026-05-08 12:30:00', 'Lasagne alla bolognese'),
  ('2026-05-08 12:30:00', 'Insalata mista'),
  ('2026-05-08 12:30:00', 'Minestra di verdure'),

  ('2026-05-08 19:30:00', 'Tagliata di manzo'),
  ('2026-05-08 19:30:00', 'Patate croccanti non presente nella lista, sostituisci manualmente se obbligatorio'),
  ('2026-05-08 19:30:00', 'Cheesecake ai frutti di bosco'),

  ('2026-05-09 08:00:00', 'Pancake con sciroppo d’acero'),
  ('2026-05-09 08:00:00', 'Frittelle di mele'),
  ('2026-05-09 08:00:00', 'Insalata mista'),

  ('2026-05-09 12:30:00', 'Pizza margherita'),
  ('2026-05-09 12:30:00', 'Insalata mista'),
  ('2026-05-09 12:30:00', 'Zuppa di lenticchie'),

  ('2026-05-09 19:30:00', 'Pesce al forno'),
  ('2026-05-09 19:30:00', 'Cous cous vegetariano'),
  ('2026-05-09 19:30:00', 'Tiramisù'),

  ('2026-05-10 08:00:00', 'Uova strapazzate'),
  ('2026-05-10 08:00:00', 'Mozzarella in carrozza'),
  ('2026-05-10 08:00:00', 'Insalata mista'),

  ('2026-05-10 12:30:00', 'Carbonara'),
  ('2026-05-10 12:30:00', 'Melanzane alla parmigiana'),
  ('2026-05-10 12:30:00', 'Insalata mista'),

  ('2026-05-10 19:30:00', 'Salmone alla griglia'),
  ('2026-05-10 19:30:00', 'Patate non presenti nella tua lista; sostituisci manualmente se necessario'),
  ('2026-05-10 19:30:00', 'Cheesecake ai frutti di bosco'),


-- =====================================================
-- ATTIVITA ROUTINE
-- =====================================================
INSERT INTO attivita_routine
(data_ora_inizio, data_ora_fine, descrizione, nome, valutazione, codice_fiscale_animatore_supervisore, tipologia_routine)
VALUES
('2026-05-01 07:00:00','2026-05-01 07:30:00','Sveglia','Sveglia','OK','RSSMRC85H21H501D','sveglia'),
('2026-05-01 09:00:00','2026-05-01 10:30:00','Sport','Attività fisica','OK','BNCGVN92A15D612H','attivita fisica'),
('2026-05-01 10:45:00','2026-05-01 12:15:00','Laboratorio','Creatività','OK','ROSSLA91D50C573F','attivita mattina'),
('2026-05-01 14:00:00','2026-05-01 15:30:00','Giochi','Attività ludica','OK','VRDFRC94B08C351K','attivita pomeriggio'),
('2026-05-01 17:00:00','2026-05-01 18:00:00','Igiene','Docce','OK','SFRNTN93E45B789L','doccia'),
('2026-05-01 20:30:00','2026-05-01 21:30:00','Serata','Gioco serale','OK','PLNNDR89E12D999Z','attivita serale'),
('2026-05-02 07:00:00','2026-05-02 07:30:00','Sveglia','Sveglia','','RSSMRC85H21H501D','sveglia'),
('2026-05-02 09:00:00','2026-05-02 10:30:00','Sport','Attività fisica','','BNCGVN92A15D612H','attivita fisica'),
('2026-05-02 10:45:00','2026-05-02 12:15:00','Laboratorio','','','ROSSLA91C573F','attivita mattina'),
('2026-05-02 14:00:00','2026-05-02 15:30:00','Giochi','','','VRDFRC94B08C351K','attivita pomeriggio'),
('2026-05-02 17:00:00','2026-05-02 18:00:00','Igiene','','','SFRNTN93E45B789L','doccia'),
('2026-05-02 20:30:00','2026-05-02 21:30:00','Serata','','','PLNNDR89E12D999Z','attivita serale');


-- =====================================================
-- FACCENDE
-- =====================================================
INSERT INTO attivita_faccende
(data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda)
VALUES
('2026-05-01 08:30:00','2026-05-01 08:45:00','Setup colazione','Preparazione','Aquile Rosse','colazione'),
('2026-05-01 08:45:00','2026-05-01 09:00:00','Cleanup colazione','Pulizia','Tigri Blu','colazione'),
('2026-05-01 12:15:00','2026-05-01 12:30:00','Setup pranzo','Preparazione','Stelle Rosse','pranzo'),
('2026-05-01 13:30:00','2026-05-01 13:45:00','Cleanup pranzo','Pulizia','Pantere Nere','pranzo'),
('2026-05-01 19:30:00','2026-05-01 19:45:00','Setup cena','Preparazione','Falchi Gialli','cena'),
('2026-05-01 19:45:00','2026-05-01 20:00:00','Cleanup cena','Pulizia','Leonesse d''Oro','cena');

-- =====================================================
-- PREVEDE
-- =====================================================
INSERT INTO routine_prevedono_materiali
(data_ora_inizio_attivita, nome_materiale, quantita)
VALUES
('2026-05-01 09:00:00', 'Pallone calcio', 2),
('2026-05-01 09:00:00', 'Palle da basket', 2),
('2026-05-01 09:00:00', 'Corda', 3),
('2026-05-02 09:00:00', 'Pallone calcio', 2),
('2026-05-02 09:00:00', 'Palle da basket', 2),
('2026-05-02 09:00:00', 'Corda', 3),
('2026-05-01 10:45:00', 'Pennarelli colorati', 3),
('2026-05-01 10:45:00', 'Quaderni', 10),
('2026-05-01 10:45:00', 'Materiale artistico', 2),
('2026-05-02 10:45:00', 'Quaderni', 12),
('2026-05-02 10:45:00', 'Pennarelli colorati', 3),
('2026-05-02 10:45:00', 'Materiale artistico', 2),
('2026-05-01 14:00:00', 'Giochi da tavolo', 4),
('2026-05-01 14:00:00', 'Corda', 2),
('2026-05-02 14:00:00', 'Giochi da tavolo', 3),
('2026-05-02 14:00:00', 'Palle da basket', 2);


-- =====================================================
-- ATTIVITA EXTRA
-- =====================================================
INSERT INTO attivita_extra
(data_ora_inizio, data_ora_fine, tipo, descrizione)
VALUES
('2026-05-01 16:00:00','2026-05-01 17:15:00','Escursione','Bosco e natura'),
('2026-05-02 16:00:00','2026-05-02 17:30:00','Laboratorio','Ceramica'),
('2026-05-03 16:00:00','2026-05-03 17:30:00','Sport','Orienteering'),
('2026-05-04 16:00:00','2026-05-04 17:30:00','Spettacolo','Teatro ragazzi'),
('2026-05-05 16:00:00','2026-05-05 17:30:00','Workshop','Fotografia'),
('2026-05-06 16:00:00','2026-05-06 17:30:00','Evento finale','Cerimonia chiusura');