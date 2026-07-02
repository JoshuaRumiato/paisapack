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
('Salmone alla griglia', 'Filetto di salmone con limone ed erbe'),
('Cornetto alla marmellata', 'Cornetto fragrante ripieno di marmellata di albicocche'),
('Cornetto alla crema', 'Cornetto sfogliato con crema pasticcera'),
('Toast prosciutto e formaggio', 'Pane tostato con prosciutto cotto e formaggio'),
('Yogurt con cereali', 'Yogurt bianco servito con cereali croccanti'),
('Muesli con frutta fresca', 'Muesli con frutta di stagione'),
('Brioche al cioccolato', 'Brioche soffice con ripieno al cioccolato'),
('Pane burro e marmellata', 'Pane tostato con burro e marmellata'),
('Crostata di albicocche', 'Fetta di crostata con confettura di albicocche'),
('Muffin ai mirtilli', 'Muffin soffice con mirtilli freschi'),
('Frutta fresca assortita', 'Selezione di frutta fresca di stagione');

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
('pesce', 'Salmone alla griglia'),
('glutine', 'Cornetto alla marmellata'),
('glutine', 'Cornetto alla crema'),
('uova', 'Cornetto alla crema'),
('lattosio', 'Cornetto alla crema'),
('glutine', 'Toast prosciutto e formaggio'),
('lattosio', 'Toast prosciutto e formaggio'),
('lattosio', 'Yogurt con cereali'),
('glutine', 'Yogurt con cereali'),
('glutine', 'Muesli con frutta fresca'),
('frutta a guscio', 'Muesli con frutta fresca'),
('glutine', 'Brioche al cioccolato'),
('uova', 'Brioche al cioccolato'),
('lattosio', 'Brioche al cioccolato'),
('glutine', 'Pane burro e marmellata'),
('lattosio', 'Pane burro e marmellata'),
('glutine', 'Crostata di albicocche'),
('uova', 'Crostata di albicocche'),
('glutine', 'Muffin ai mirtilli'),
('uova', 'Muffin ai mirtilli'),
('lattosio', 'Muffin ai mirtilli');

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
('RSSMRC85H21H501D', 'Marco', 'Rossi', 'Udine', 'foto_marco_rossi.jpg', 'Capo campo - Esperienza 10 anni', 102),
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
('Leonesse d`Oro', 'Orgogliose e unite!', 0, 'PLNNDR89E12D999Z');

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
('MZNLSA08D05H012D', 'parent11@email.com', '3301234567', 'Leonesse d`Oro'),
('SPNVRA09E15I234E', 'parent12@email.com', '3302345678', 'Leonesse d`Oro');

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
-- 06/05/2026
  ('2026-05-06 08:00:00', '2026-05-06 08:45:00', 'colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-06 12:30:00', '2026-05-06 13:30:00', 'pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-06 17:00:00', '2026-05-06 17:30:00', 'merenda', 'Spuntino pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-06 19:30:00', '2026-05-06 20:30:00', 'cena', 'Pasto serale', 'MRNMRT88C30E506G'),

-- 07/05/2026
  ('2026-05-07 08:00:00', '2026-05-07 08:45:00', 'colazione', 'Pasto mattutino', 'BRNNNA91A65F234P'),
  ('2026-05-07 12:30:00', '2026-05-07 13:30:00', 'pranzo', 'Pasto pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-07 17:00:00', '2026-05-07 17:30:00', 'merenda', 'Spuntino pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-07 19:30:00', '2026-05-07 20:30:00', 'cena', 'Pasto serale', 'BRNNNA91A65F234P'),

-- 08/05/2026
  ('2026-05-08 08:00:00', '2026-05-08 08:45:00', 'colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-08 12:30:00', '2026-05-08 13:30:00', 'pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-08 17:00:00', '2026-05-08 17:30:00', 'merenda', 'Spuntino pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-08 19:30:00', '2026-05-08 20:30:00', 'cena', 'Pasto serale', 'MRNMRT88C30E506G'),

-- 09/05/2026
  ('2026-05-09 08:00:00', '2026-05-09 08:45:00', 'colazione', 'Pasto mattutino', 'BRNNNA91A65F234P'),
  ('2026-05-09 12:30:00', '2026-05-09 13:30:00', 'pranzo', 'Pasto pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-09 17:00:00', '2026-05-09 17:30:00', 'merenda', 'Spuntino pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-09 19:30:00', '2026-05-09 20:30:00', 'cena', 'Pasto serale', 'BRNNNA91A65F234P'),

-- 10/05/2026
  ('2026-05-10 08:00:00', '2026-05-10 08:45:00', 'colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-10 12:30:00', '2026-05-10 13:30:00', 'pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-10 17:00:00', '2026-05-10 17:30:00', 'merenda', 'Spuntino pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-10 19:30:00', '2026-05-10 20:30:00', 'cena', 'Pasto serale', 'MRNMRT88C30E506G'),

-- 11/05/2026
  ('2026-05-11 08:00:00', '2026-05-11 08:45:00', 'colazione', 'Pasto mattutino', 'BRNNNA91A65F234P'),
  ('2026-05-11 12:30:00', '2026-05-11 13:30:00', 'pranzo', 'Pasto pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-11 17:00:00', '2026-05-11 17:30:00', 'merenda', 'Spuntino pomeridiano', 'MRNMRT88C30E506G'),
  ('2026-05-11 19:30:00', '2026-05-11 20:30:00', 'cena', 'Pasto serale', 'BRNNNA91A65F234P'),

-- 12/05/2026
  ('2026-05-12 08:00:00', '2026-05-12 08:45:00', 'colazione', 'Pasto mattutino', 'MRNMRT88C30E506G'),
  ('2026-05-12 12:30:00', '2026-05-12 13:30:00', 'pranzo', 'Pasto pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-12 17:00:00', '2026-05-12 17:30:00', 'merenda', 'Spuntino pomeridiano', 'BRNNNA91A65F234P'),
  ('2026-05-12 19:30:00', '2026-05-12 20:30:00', 'cena', 'Pasto serale', 'MRNMRT88C30E506G');

-- =====================================================
-- PIETANZE PER PASTO
-- =====================================================
INSERT INTO pietanze_per_pasto (data_ora_inizio, nome_pietanza) VALUES
-- 06/05/2026
('2026-05-06 08:00:00', 'Cornetto alla marmellata'),
('2026-05-06 08:00:00', 'Yogurt con cereali'),
('2026-05-06 08:00:00', 'Frutta fresca assortita'),

('2026-05-06 12:30:00', 'Pasta al ragù'),
('2026-05-06 12:30:00', 'Insalata mista'),
('2026-05-06 12:30:00', 'Tiramisù'),

('2026-05-06 17:00:00', 'Cornetto alla marmellata'),

('2026-05-06 19:30:00', 'Pesce al forno'),
('2026-05-06 19:30:00', 'Minestra di verdure'),
('2026-05-06 19:30:00', 'Cheesecake ai frutti di bosco'),

-- 07/05/2026
('2026-05-07 08:00:00', 'Toast prosciutto e formaggio'),
('2026-05-07 08:00:00', 'Muffin ai mirtilli'),
('2026-05-07 08:00:00', 'Frutta fresca assortita'),

('2026-05-07 12:30:00', 'Risotto ai funghi'),
('2026-05-07 12:30:00', 'Insalata mista'),
('2026-05-07 12:30:00', 'Cheesecake ai frutti di bosco'),

('2026-05-07 17:00:00', 'Yogurt con cereali'),

('2026-05-07 19:30:00', 'Pollo arrosto con patate'),
('2026-05-07 19:30:00', 'Mozzarella in carrozza'),
('2026-05-07 19:30:00', 'Minestra di verdure'),

-- 08/05/2026
('2026-05-08 08:00:00', 'Pancake con sciroppo d’acero'),
('2026-05-08 08:00:00', 'Yogurt con cereali'),
('2026-05-08 08:00:00', 'Frutta fresca assortita'),

('2026-05-08 12:30:00', 'Lasagne alla bolognese'),
('2026-05-08 12:30:00', 'Insalata mista'),
('2026-05-08 12:30:00', 'Tiramisù'),

('2026-05-08 17:00:00', 'Muffin ai mirtilli'),

('2026-05-08 19:30:00', 'Salmone alla griglia'),
('2026-05-08 19:30:00', 'Zuppa di lenticchie'),
('2026-05-08 19:30:00', 'Melanzane alla parmigiana'),

-- 09/05/2026
('2026-05-09 08:00:00', 'Cornetto alla crema'),
('2026-05-09 08:00:00', 'Muesli con frutta fresca'),
('2026-05-09 08:00:00', 'Frutta fresca assortita'),

('2026-05-09 12:30:00', 'Gnocchi al pesto'),
('2026-05-09 12:30:00', 'Insalata mista'),
('2026-05-09 12:30:00', 'Cheesecake ai frutti di bosco'),

('2026-05-09 17:00:00', 'Frutta fresca assortita'),

('2026-05-09 19:30:00', 'Tagliata di manzo'),
('2026-05-09 19:30:00', 'Melanzane alla parmigiana'),
('2026-05-09 19:30:00', 'Zuppa di lenticchie'),

-- 10/05/2026
('2026-05-10 08:00:00', 'Brioche al cioccolato'),
('2026-05-10 08:00:00', 'Pane burro e marmellata'),
('2026-05-10 08:00:00', 'Frutta fresca assortita'),

('2026-05-10 12:30:00', 'Carbonara'),
('2026-05-10 12:30:00', 'Insalata mista'),
('2026-05-10 12:30:00', 'Tiramisù'),

('2026-05-10 17:00:00', 'Brioche al cioccolato'),

('2026-05-10 19:30:00', 'Spaghetti alle vongole'),
('2026-05-10 19:30:00', 'Calamari fritti'),
('2026-05-10 19:30:00', 'Cous cous vegetariano'),

-- 11/05/2026
('2026-05-11 08:00:00', 'Cornetto alla marmellata'),
('2026-05-11 08:00:00', 'Muesli con frutta fresca'),
('2026-05-11 08:00:00', 'Frutta fresca assortita'),

('2026-05-11 12:30:00', 'Pizza margherita'),
('2026-05-11 12:30:00', 'Insalata mista'),
('2026-05-11 12:30:00', 'Cheesecake ai frutti di bosco'),

('2026-05-11 17:00:00', 'Pane burro e marmellata'),

('2026-05-11 19:30:00', 'Hamburger con patatine'),
('2026-05-11 19:30:00', 'Zuppa di lenticchie'),
('2026-05-11 19:30:00', 'Frittelle di mele'),

-- 12/05/2026
('2026-05-12 08:00:00', 'Toast prosciutto e formaggio'),
('2026-05-12 08:00:00', 'Yogurt con cereali'),
('2026-05-12 08:00:00', 'Frutta fresca assortita'),

('2026-05-12 12:30:00', 'Cous cous vegetariano'),
('2026-05-12 12:30:00', 'Insalata mista'),
('2026-05-12 12:30:00', 'Tiramisù'),

('2026-05-12 17:00:00', 'Cheesecake ai frutti di bosco'),

('2026-05-12 19:30:00', 'Uova strapazzate'),
('2026-05-12 19:30:00', 'Melanzane alla parmigiana'),
('2026-05-12 19:30:00', 'Crostata di albicocche');

-- =====================================================
-- ATTIVITA ROUTINE
-- =====================================================
INSERT INTO attivita_routine
(data_ora_inizio, data_ora_fine, descrizione, nome, codice_fiscale_animatore_supervisore, tipologia_routine)
VALUES
-- 06/05/2026
  ('2026-05-06 07:20:00', '2026-05-06 07:40:00', 'Sveglia animati', 'sveglia', 'VRDFRC94B08C351K', 'sveglia'),
  ('2026-05-06 07:40:00', '2026-05-06 07:45:00', 'Attività fisica', 'attivita fisica', 'VRDFRC94B08C351K', 'attivita fisica'),
  ('2026-05-06 09:30:00', '2026-05-06 11:30:00', 'Attività mattina', 'attivita della mattina', 'SFRNTN93E45B789L', 'attivita della mattina'),
  ('2026-05-06 11:30:00', '2026-05-06 12:15:00', 'Gioco libero', 'gioco libero', 'RSSMRC85H21H501D', 'gioco libero'),
  ('2026-05-06 14:00:00', '2026-05-06 15:00:00', 'Gioco libero', 'gioco libero', 'VRDFRC94B08C351K', 'gioco libero'),
  ('2026-05-06 15:00:00', '2026-05-06 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'SFRNTN93E45B789L', 'attivita del pomeriggio'),
  ('2026-05-06 17:30:00', '2026-05-06 18:30:00', 'Doccia', 'doccia', 'RSSMRC85H21H501D', 'doccia'),
  ('2026-05-06 18:30:00', '2026-05-06 19:15:00', 'Gioco libero', 'gioco libero', 'PLNNDR89E12D999Z', 'gioco libero'),
  ('2026-05-06 21:00:00', '2026-05-06 23:00:00', 'attivita serale', 'attivita serale', 'PLNNDR89E12D999Z', 'attivita serale'),
  ('2026-05-06 23:00:00', '2026-05-06 23:30:00', 'verifica e resoconto della giornata', 'verifica e resoconto della giornata', 'BNCGVN92A15D612H', 'verifica e resoconto della giornata'),

-- 07/05/2026
  ('2026-05-07 07:20:00', '2026-05-07 07:40:00', 'Sveglia animati', 'sveglia', 'BNCGVN92A15D612H', 'sveglia'),
  ('2026-05-07 07:40:00', '2026-05-07 07:45:00', 'Attività fisica', 'attivita fisica', 'ROSSLA91D50C573F', 'attivita fisica'),
  ('2026-05-07 09:30:00', '2026-05-07 11:30:00', 'Attività mattina', 'attivita della mattina', 'ROSSLA91D50C573F', 'attivita della mattina'),
  ('2026-05-07 11:30:00', '2026-05-07 12:15:00', 'Gioco libero', 'gioco libero', 'PLNNDR89E12D999Z', 'gioco libero'),
  ('2026-05-07 14:00:00', '2026-05-07 15:00:00', 'Gioco libero', 'gioco libero', 'BNCGVN92A15D612H', 'gioco libero'),
  ('2026-05-07 15:00:00', '2026-05-07 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'BNCGVN92A15D612H', 'attivita del pomeriggio'),
  ('2026-05-07 17:30:00', '2026-05-07 18:30:00', 'Doccia', 'doccia', 'VRDFRC94B08C351K', 'doccia'),
  ('2026-05-07 18:30:00', '2026-05-07 19:15:00', 'Gioco libero', 'gioco libero', 'PLNNDR89E12D999Z', 'gioco libero'),
  ('2026-05-07 21:00:00', '2026-05-07 23:00:00', 'attivita serale', 'attivita serale', 'SFRNTN93E45B789L', 'attivita serale'),
  ('2026-05-07 23:00:00', '2026-05-07 23:30:00', 'verifica e resoconto della giornata', 'verifica e resoconto della giornata', 'VRDFRC94B08C351K', 'verifica e resoconto della giornata'),

-- 08/05/2026
  ('2026-05-08 07:20:00', '2026-05-08 07:40:00', 'Sveglia animati', 'sveglia', 'RSSMRC85H21H501D', 'sveglia'),
  ('2026-05-08 07:40:00', '2026-05-08 07:45:00', 'Attività fisica', 'attivita fisica', 'VRDFRC94B08C351K', 'attivita fisica'),
  ('2026-05-08 09:30:00', '2026-05-08 11:30:00', 'Attività mattina', 'attivita della mattina', 'ROSSLA91D50C573F', 'attivita della mattina'),
  ('2026-05-08 11:30:00', '2026-05-08 12:15:00', 'Gioco libero', 'gioco libero', 'PLNNDR89E12D999Z', 'gioco libero'),
  ('2026-05-08 14:00:00', '2026-05-08 15:00:00', 'Gioco libero', 'gioco libero', 'BNCGVN92A15D612H', 'gioco libero'),
  ('2026-05-08 17:30:00', '2026-05-08 18:30:00', 'Doccia', 'doccia', 'RSSMRC85H21H501D', 'doccia'),
  ('2026-05-08 18:30:00', '2026-05-08 19:15:00', 'Gioco libero', 'gioco libero', 'ROSSLA91D50C573F', 'gioco libero'),
  ('2026-05-08 21:00:00', '2026-05-08 23:00:00', 'attivita serale', 'attivita serale', 'ROSSLA91D50C573F', 'attivita serale'),
  ('2026-05-08 23:00:00', '2026-05-08 23:30:00', 'verifica e resoconto della giornata', 'verifica e resoconto della giornata', 'VRDFRC94B08C351K', 'verifica e resoconto della giornata'),

-- 09/05/2026
  ('2026-05-09 07:20:00', '2026-05-09 07:40:00', 'Sveglia animati', 'sveglia', 'VRDFRC94B08C351K', 'sveglia'),
  ('2026-05-09 07:40:00', '2026-05-09 07:45:00', 'Attività fisica', 'attivita fisica', 'PLNNDR89E12D999Z', 'attivita fisica'),
  ('2026-05-09 09:30:00', '2026-05-09 11:30:00', 'Attività mattina', 'attivita della mattina', 'BNCGVN92A15D612H', 'attivita della mattina'),
  ('2026-05-09 11:30:00', '2026-05-09 12:15:00', 'Gioco libero', 'gioco libero', 'SFRNTN93E45B789L', 'gioco libero'),
  ('2026-05-09 14:00:00', '2026-05-09 15:00:00', 'Gioco libero', 'gioco libero', 'SFRNTN93E45B789L', 'gioco libero'),
  ('2026-05-09 15:00:00', '2026-05-09 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'SFRNTN93E45B789L', 'attivita del pomeriggio'),
  ('2026-05-09 17:30:00', '2026-05-09 18:30:00', 'Doccia', 'doccia', 'BNCGVN92A15D612H', 'doccia'),
  ('2026-05-09 18:30:00', '2026-05-09 19:15:00', 'Gioco libero', 'gioco libero', 'ROSSLA91D50C573F', 'gioco libero'),
  ('2026-05-09 21:00:00', '2026-05-09 23:00:00', 'attivita serale', 'attivita serale', 'SFRNTN93E45B789L', 'attivita serale'),
  ('2026-05-09 23:00:00', '2026-05-09 23:30:00', 'verifica e resoconto della giornata', 'verifica e resoconto della giornata', 'RSSMRC85H21H501D', 'verifica e resoconto della giornata'),

-- 10/05/2026
  ('2026-05-10 07:20:00', '2026-05-10 07:40:00', 'Sveglia animati', 'sveglia', 'VRDFRC94B08C351K', 'sveglia'),
  ('2026-05-10 07:40:00', '2026-05-10 07:45:00', 'Attività fisica', 'attivita fisica', 'RSSMRC85H21H501D', 'attivita fisica'),
  ('2026-05-10 09:30:00', '2026-05-10 11:30:00', 'Attività mattina', 'attivita della mattina', 'BNCGVN92A15D612H', 'attivita della mattina'),
  ('2026-05-10 11:30:00', '2026-05-10 12:15:00', 'Gioco libero', 'gioco libero', 'ROSSLA91D50C573F', 'gioco libero'),
  ('2026-05-10 14:00:00', '2026-05-10 15:00:00', 'Gioco libero', 'gioco libero', 'PLNNDR89E12D999Z', 'gioco libero'),
  ('2026-05-10 15:00:00', '2026-05-10 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'PLNNDR89E12D999Z', 'attivita del pomeriggio'),
  ('2026-05-10 17:30:00', '2026-05-10 18:30:00', 'Doccia', 'doccia', 'PLNNDR89E12D999Z', 'doccia'),
  ('2026-05-10 18:30:00', '2026-05-10 19:15:00', 'Gioco libero', 'gioco libero', 'RSSMRC85H21H501D', 'gioco libero'),
  ('2026-05-10 21:00:00', '2026-05-10 23:00:00', 'attivita serale', 'attivita serale', 'PLNNDR89E12D999Z', 'attivita serale'),
  ('2026-05-10 23:00:00', '2026-05-10 23:30:00', 'verifica e resoconto della giornata', 'verifica e resoconto della giornata', 'RSSMRC85H21H501D', 'verifica e resoconto della giornata'),

-- 11/05/2026
  ('2026-05-11 07:20:00', '2026-05-11 07:40:00', 'Sveglia animati', 'sveglia', 'VRDFRC94B08C351K', 'sveglia'),
  ('2026-05-11 07:40:00', '2026-05-11 07:45:00', 'Attività fisica', 'attivita fisica', 'SFRNTN93E45B789L', 'attivita fisica'),
  ('2026-05-11 09:30:00', '2026-05-11 11:30:00', 'Attività mattina', 'attivita della mattina', 'PLNNDR89E12D999Z', 'attivita della mattina'),
  ('2026-05-11 11:30:00', '2026-05-11 12:15:00', 'Gioco libero', 'gioco libero', 'ROSSLA91D50C573F', 'gioco libero'),
  ('2026-05-11 14:00:00', '2026-05-11 15:00:00', 'Gioco libero', 'gioco libero', 'RSSMRC85H21H501D', 'gioco libero'),
  ('2026-05-11 15:00:00', '2026-05-11 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'PLNNDR89E12D999Z', 'attivita del pomeriggio'),
  ('2026-05-11 17:30:00', '2026-05-11 18:30:00', 'Doccia', 'doccia', 'SFRNTN93E45B789L', 'doccia'),
  ('2026-05-11 18:30:00', '2026-05-11 19:15:00', 'Gioco libero', 'gioco libero', 'SFRNTN93E45B789L', 'gioco libero'),
  ('2026-05-11 21:00:00', '2026-05-11 23:00:00', 'attivita serale', 'attivita serale', 'BNCGVN92A15D612H', 'attivita serale'),
  ('2026-05-11 23:00:00', '2026-05-11 23:30:00', 'verifica e resoconto della giornata', 'verifica e resoconto della giornata', 'ROSSLA91D50C573F', 'verifica e resoconto della giornata'),

-- 12/05/2026
  ('2026-05-12 07:20:00', '2026-05-12 07:40:00', 'Sveglia animati', 'sveglia', 'RSSMRC85H21H501D', 'sveglia'),
  ('2026-05-12 07:40:00', '2026-05-12 07:45:00', 'Attività fisica', 'attivita fisica', 'BNCGVN92A15D612H', 'attivita fisica'),
  ('2026-05-12 09:30:00', '2026-05-12 11:30:00', 'Attività mattina', 'attivita della mattina', 'SFRNTN93E45B789L', 'attivita della mattina'),
  ('2026-05-12 11:30:00', '2026-05-12 12:15:00', 'Gioco libero', 'gioco libero', 'SFRNTN93E45B789L', 'gioco libero'),
  ('2026-05-12 14:00:00', '2026-05-12 15:00:00', 'Gioco libero', 'gioco libero', 'PLNNDR89E12D999Z', 'gioco libero'),
  ('2026-05-12 15:00:00', '2026-05-12 17:00:00', 'Attività pomeriggio', 'attivita del pomeriggio', 'SFRNTN93E45B789L', 'attivita del pomeriggio'),
  ('2026-05-12 17:30:00', '2026-05-12 18:30:00', 'Doccia', 'doccia', 'PLNNDR89E12D999Z', 'doccia'),
  ('2026-05-12 18:30:00', '2026-05-12 19:15:00', 'Gioco libero', 'gioco libero', 'SFRNTN93E45B789L', 'gioco libero');


-- =====================================================
-- FACCENDE
-- =====================================================
INSERT INTO attivita_faccende
(data_ora_inizio, data_ora_fine, nome, descrizione, nome_squadra, tipologia_faccenda)
VALUES
-- 06/05/2026
  ('2026-05-06 07:45:00', '2026-05-06 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Tigri Blu', 'preparazione tavoli colazione'),
  ('2026-05-06 08:45:00', '2026-05-06 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Aquile Rosse', 'spreparazione tavoli colazione'),
  ('2026-05-06 09:00:00', '2026-05-06 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-06 12:15:00', '2026-05-06 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-06 13:30:00', '2026-05-06 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-06 13:45:00', '2026-05-06 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-06 19:15:00', '2026-05-06 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-06 20:30:00', '2026-05-06 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-06 20:45:00', '2026-05-06 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),

-- 07/05/2026
  ('2026-05-07 07:45:00', '2026-05-07 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Leonesse d`Oro', 'preparazione tavoli colazione'),
  ('2026-05-07 08:45:00', '2026-05-07 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Stelle Rosse', 'spreparazione tavoli colazione'),
  ('2026-05-07 09:00:00', '2026-05-07 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-07 12:15:00', '2026-05-07 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-07 13:30:00', '2026-05-07 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-07 13:45:00', '2026-05-07 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-07 19:15:00', '2026-05-07 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-07 20:30:00', '2026-05-07 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-07 20:45:00', '2026-05-07 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),

-- 08/05/2026
  ('2026-05-08 07:45:00', '2026-05-08 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Leonesse d`Oro', 'preparazione tavoli colazione'),
  ('2026-05-08 08:45:00', '2026-05-08 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Pantere Nere', 'spreparazione tavoli colazione'),
  ('2026-05-08 09:00:00', '2026-05-08 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-08 12:15:00', '2026-05-08 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-08 13:30:00', '2026-05-08 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-08 13:45:00', '2026-05-08 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-08 19:15:00', '2026-05-08 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-08 20:30:00', '2026-05-08 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-08 20:45:00', '2026-05-08 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),

-- 09/05/2026
  ('2026-05-09 07:45:00', '2026-05-09 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Stelle Rosse', 'preparazione tavoli colazione'),
  ('2026-05-09 08:45:00', '2026-05-09 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Pantere Nere', 'spreparazione tavoli colazione'),
  ('2026-05-09 09:00:00', '2026-05-09 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-09 12:15:00', '2026-05-09 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-09 13:30:00', '2026-05-09 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-09 13:45:00', '2026-05-09 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-09 19:15:00', '2026-05-09 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-09 20:30:00', '2026-05-09 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-09 20:45:00', '2026-05-09 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),

-- 10/05/2026
  ('2026-05-10 07:45:00', '2026-05-10 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Pantere Nere', 'preparazione tavoli colazione'),
  ('2026-05-10 08:45:00', '2026-05-10 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 09:00:00', '2026-05-10 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 12:15:00', '2026-05-10 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 13:30:00', '2026-05-10 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 13:45:00', '2026-05-10 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 19:15:00', '2026-05-10 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 20:30:00', '2026-05-10 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-10 20:45:00', '2026-05-10 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),

-- 11/05/2026
  ('2026-05-11 07:45:00', '2026-05-11 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Pantere Nere', 'preparazione tavoli colazione'),
  ('2026-05-11 08:45:00', '2026-05-11 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 09:00:00', '2026-05-11 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 12:15:00', '2026-05-11 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 13:30:00', '2026-05-11 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 13:45:00', '2026-05-11 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 19:15:00', '2026-05-11 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 20:30:00', '2026-05-11 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-11 20:45:00', '2026-05-11 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
-- 12/05/2026
  ('2026-05-12 07:45:00', '2026-05-12 08:00:00', 'apparecchiare colazione', 'apparecchiare colazione', 'Falchi Gialli', 'preparazione tavoli colazione'),
  ('2026-05-12 08:45:00', '2026-05-12 09:00:00', 'sparecchiare colazione', 'sparecchiare colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 09:00:00', '2026-05-12 09:30:00', 'pulizia stoviglie tavoli colazione', 'pulizia stoviglie tavoli colazione', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 12:15:00', '2026-05-12 12:30:00', 'apparecchiare pranzo', 'apparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 13:30:00', '2026-05-12 13:45:00', 'sparecchiare pranzo', 'sparecchiare pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 13:45:00', '2026-05-12 14:00:00', 'pulizia stoviglie tavoli pranzo', 'pulizia stoviglie tavoli pranzo', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 19:15:00', '2026-05-12 19:30:00', 'apparecchiare cena', 'apparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 20:30:00', '2026-05-12 20:45:00', 'sparecchiare cena', 'sparecchiare cena', 'Falchi Gialli', 'spreparazione tavoli colazione'),
  ('2026-05-12 20:45:00', '2026-05-12 21:00:00', 'pulizia stoviglie tavoli cena', 'pulizia stoviglie tavoli cena', 'Falchi Gialli', 'spreparazione tavoli colazione');

-- =====================================================
-- PREVEDE
-- =====================================================
INSERT INTO routine_prevedono_materiali
(data_ora_inizio_attivita, nome_materiale, quantita)
VALUES
-- 06/05/2026 - Gioco libero
('2026-05-06 14:00:00', 'Giochi da tavolo', 4),

-- 06/05/2026 - Attività pomeriggio
('2026-05-06 15:00:00', 'Pennarelli colorati', 3),
('2026-05-06 15:00:00', 'Quaderni', 10),
('2026-05-06 15:00:00', 'Materiale artistico', 2),

-- 07/05/2026 - Gioco libero
('2026-05-07 14:00:00', 'Giochi da tavolo', 3),

-- 07/05/2026 - Attività pomeriggio
('2026-05-07 15:00:00', 'Pennarelli colorati', 3),
('2026-05-07 15:00:00', 'Quaderni', 12),
('2026-05-07 15:00:00', 'Materiale artistico', 2),

-- 08/05/2026 - Attività mattina
('2026-05-08 09:30:00', 'Pallone calcio', 2),
('2026-05-08 09:30:00', 'Palle da basket', 2),
('2026-05-08 09:30:00', 'Corda', 3),

-- 08/05/2026 - Gioco libero
('2026-05-08 14:00:00', 'Giochi da tavolo', 4),

-- 09/05/2026 - Attività mattina
('2026-05-09 09:30:00', 'Pallone calcio', 3),
('2026-05-09 09:30:00', 'Palle da basket', 2),
('2026-05-09 09:30:00', 'Corda', 4),

-- 09/05/2026 - Gioco libero
('2026-05-09 14:00:00', 'Giochi da tavolo', 4),

-- 09/05/2026 - Attività pomeriggio
('2026-05-09 15:00:00', 'Pennarelli colorati', 3),
('2026-05-09 15:00:00', 'Quaderni', 12),
('2026-05-09 15:00:00', 'Materiale artistico', 2),

-- 10/05/2026 - Attività mattina
('2026-05-10 09:30:00', 'Pallone calcio', 2),
('2026-05-10 09:30:00', 'Palle da basket', 3),
('2026-05-10 09:30:00', 'Corda', 3),

-- 10/05/2026 - Gioco libero
('2026-05-10 14:00:00', 'Giochi da tavolo', 3),

-- 10/05/2026 - Attività pomeriggio
('2026-05-10 15:00:00', 'Pennarelli colorati', 3),
('2026-05-10 15:00:00', 'Quaderni', 10),
('2026-05-10 15:00:00', 'Materiale artistico', 2),

-- 11/05/2026 - Attività mattina
('2026-05-11 09:30:00', 'Pallone calcio', 2),
('2026-05-11 09:30:00', 'Palle da basket', 2),
('2026-05-11 09:30:00', 'Corda', 3),

-- 11/05/2026 - Gioco libero
('2026-05-11 14:00:00', 'Giochi da tavolo', 4),

-- 11/05/2026 - Attività pomeriggio
('2026-05-11 15:00:00', 'Pennarelli colorati', 4),
('2026-05-11 15:00:00', 'Quaderni', 12),
('2026-05-11 15:00:00', 'Materiale artistico', 2),

-- 12/05/2026 - Attività mattina
('2026-05-12 09:30:00', 'Pallone calcio', 2),
('2026-05-12 09:30:00', 'Palle da basket', 2),
('2026-05-12 09:30:00', 'Corda', 3),

-- 12/05/2026 - Gioco libero
('2026-05-12 14:00:00', 'Giochi da tavolo', 3),

-- 12/05/2026 - Attività pomeriggio
('2026-05-12 15:00:00', 'Pennarelli colorati', 3),
('2026-05-12 15:00:00', 'Quaderni', 10),
('2026-05-12 15:00:00', 'Materiale artistico', 2);


-- =====================================================
-- ATTIVITA EXTRA
-- =====================================================
INSERT INTO attivita_extra
(data_ora_inizio, data_ora_fine, tipo, descrizione)
VALUES
('2026-05-08 15:00:00','2026-05-08 17:00:00','Escursione','Bosco e natura'),
('2026-05-12 21:00:00','2026-05-12 23:00:00','Evento finale','Cerimonia chiusura');