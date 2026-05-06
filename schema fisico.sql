CREATE TYPE tipologia_pasto AS ENUM ('colazione', 'pranzo', 'merenda', 'cena');


CREATE TYPE tipologia_faccenda AS ENUM (
	'preparazione tavoli colazione',
	'spreparazione tavoli colazione',
	'pulizia stoviglie tavoli colazione',
	'preparazione tavoli pranzo',
	'spreparazione tavoli pranzo',
	'pulizia stoviglie pranzo',
	'preparazione tavoli cena',
	'spreparazione tavoli cena',
	'puliza stoviglie cena'
);


CREATE TYPE tipologia_routine AS ENUM (
	'sveglia',
	'attivita fisica',
	'attivita della mattina',
	'attivita del pomeriggio',
	'doccia',
	'gioco libero',
	'attivita serale',
	'verifica e resoconto della giornata'
);




--CHECKS

CREATE FUNCTION is_valid_cf(text)
RETURNS boolean AS $$
BEGIN
    RETURN $1 ~ '^[A-Z]{6}[0-9]{2}[A-EHLMPRST]{1}[0-9]{2}[A-Z]{1}[0-9]{3}[A-Z]{1}$';
END;
$$ LANGUAGE plpgsql IMMUTABLE;



CREATE FUNCTION is_valid_email(text)
RETURNS boolean AS $$
BEGIN
    RETURN $1 ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';
END;
$$ LANGUAGE plpgsql IMMUTABLE;


CREATE FUNCTION is_valid_phone_number(text)
RETURNS boolean AS $$
BEGIN
    RETURN $1 ~ '^[0-9]{10}$';
END;
$$ LANGUAGE plpgsql IMMUTABLE;


CREATE FUNCTION is_valid_voto(int)
RETURNS boolean AS $$
BEGIN
    RETURN $1 BETWEEN 1 AND 5;
END;
$$ LANGUAGE plpgsql IMMUTABLE;




--TRIGGERS
-- CREATE check_animatore_responsabile_presente 
-- BEFORE INSERT 
-- ON stanze FOR EACH ROW
-- LANGUAGE plpgsql AS $$
-- BEGIN
-- 	IF SELECT COUNT(*)=1 FROM partecipanti NATURAL JOIN animatori WHERE numero_stanza=NEW.numero_stanza IS NULL THEN
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'Animatore is required';
-- 	END IF;
-- END $$;
CREATE OR REPLACE FUNCTION check_single_ruolo()
RETURNS TRIGGER AS $$
DECLARE
    cnt INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO cnt
    FROM (
        SELECT codice_fiscale FROM animatori
        UNION ALL
        SELECT codice_fiscale FROM collaboratori
        UNION ALL
        SELECT codice_fiscale FROM animati
        UNION ALL
        SELECT codice_fiscale FROM cuochi
    ) t
    WHERE codice_fiscale = NEW.codice_fiscale;
	IF cnt=0 THEN
		IF cnt=1 THEN
			RAISE EXCEPTION 'Un ruolo al massimo per %', NEW.codice_fiscale;
    	END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_partecipanti_ruolo
BEFORE INSERT ON partecipanti
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo();

CREATE OR REPLACE TRIGGER trg_animatori_ruolo
BEFORE INSERT ON animatori
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo();

CREATE OR REPLACE TRIGGER trg_collaboratori_ruolo
BEFORE INSERT ON collaboratori
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo();

CREATE OR REPLACE TRIGGER trg_animati_ruolo
BEFORE INSERT ON animati
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo();

CREATE OR REPLACE TRIGGER trg_cuochi_ruolo
BEFORE INSERT ON cuochi
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo();

--TABLES

CREATE TABLE IF NOT EXISTS "allergeni" (
	"nome" VARCHAR(64) NOT NULL,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "attivita_extra" (
	"data_ora_fine" TIMESTAMP NOT NULL,
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"tipo" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	PRIMARY KEY("data_ora_fine")
);




CREATE TABLE IF NOT EXISTS "edificio" (
	"via" VARCHAR(64) NOT NULL,
	"civico" VARCHAR(8) NOT NULL,
	"cap" CHAR(5) NOT NULL,
	"comune" VARCHAR(255) NOT NULL,
	"provincia" CHAR(2) NOT NULL,
	PRIMARY KEY("via", "civico", "cap", "comune", "provincia")
);




CREATE TABLE IF NOT EXISTS "materiali" (
	"nome" VARCHAR(64) NOT NULL,
	"unita_misura" VARCHAR(32) NOT NULL,
	"numero_utilizzi" INTEGER NOT NULL DEFAULT 1 CHECK (numero_utilizzi >= 0),
	"portare_in_autonomia" BOOLEAN NOT NULL,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "pietanze" (
	"nome" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "stanze" (
	"numero" SMALLINT NOT NULL,
	"piano" SMALLINT NOT NULL,
	"posti_letto" SMALLINT NOT NULL CHECK (posti_letto > 0),
	PRIMARY KEY("numero")
);




CREATE TABLE IF NOT EXISTS "contiene" (
	"nome_allergene" VARCHAR(64) NOT NULL,
	"nome_pietanza" VARCHAR(64) NOT NULL,
	PRIMARY KEY("nome_allergene", "nome_pietanza")
	FOREIGN KEY("nome_allergene") REFERENCES "allergeni"("nome"),
	FOREIGN KEY("nome_pietanza") REFERENCES "pietanze"("nome")
);




CREATE TABLE IF NOT EXISTS "partecipanti" (
	"codice_fiscale" CHAR(16) NOT NULL CHECK (is_valid_cf(codice_fiscale)),
	"nome" VARCHAR(64) NOT NULL,
	"cognome" VARCHAR(64) NOT NULL,
	"sesso" CHAR(1) NOT NULL,
	"data_nascita" DATE NOT NULL,
	"luogo_nascita" VARCHAR(255) NOT NULL,
	"foto_documento" VARCHAR(255) NOT NULL UNIQUE,
	"note" TEXT,
	"numero_stanza" SMALLINT NOT NULL,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY("numero_stanza") REFERENCES "stanze"("numero")
);


COMMENT ON COLUMN "partecipanti"."sesso" IS 'attributo derivato da codice_fiscale';
COMMENT ON COLUMN "partecipanti"."data_nascita" IS 'attributo derivato da codice_fiscale';


CREATE TABLE IF NOT EXISTS "allergico" (
	"codice_fiscale_partecipante" CHAR(16) NOT NULL,
	"nome_allergene" VARCHAR(64) NOT NULL,
	PRIMARY KEY("codice_fiscale_partecipante", "nome_allergene"),
	FOREIGN KEY("codice_fiscale_partecipante") REFERENCES "partecipanti"("codice_fiscale"),
	FOREIGN KEY("nome_allergene") REFERENCES "allergeni"("nome")
);




CREATE TABLE IF NOT EXISTS "animatori" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email" VARCHAR(254) NOT NULL CHECK (is_valid_email(email)),
	"telefono" CHAR(10) NOT NULL,
	"voto" INTEGER,
	"commento" TEXT,
	"capocampo" BOOLEAN DEFAULT false NOT NULL,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "attivita_routine" (
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"descrizione" TEXT,
	"nome" VARCHAR(64) NOT NULL,
	"valutazione" TEXT,
	"codice_fiscale_animatore_supervisore" CHAR(16) NOT NULL,
	"tipologia_routine" TIPOLOGIA_ROUTINE NOT NULL,
	PRIMARY KEY("data_ora_inizio"),
	FOREIGN KEY("codice_fiscale_animatore_supervisore") REFERENCES "animatori"("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "collaboratori" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email" VARCHAR(254) NOT NULL,
	"telefono" CHAR(10) NOT NULL,
	"voto" INTEGER,
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "cuochi" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email" VARCHAR(254) NOT NULL,
	"telefono" CHAR(10) NOT NULL,
	"voto" INTEGER,
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "prevede" (
	"data_ora_inizio_attivita" TIMESTAMP NOT NULL,
	"nome_materiale" VARCHAR(64) NOT NULL,
	"quantita" INTEGER NOT NULL CHECK (quantita > 0),
	PRIMARY KEY("data_ora_inizio_attivita", "nome_materiale"),
	FOREIGN KEY("nome_materiale") REFERENCES "materiali"("nome"),
	FOREIGN KEY("data_ora_inizio_attivita") REFERENCES "attivita_routine"("data_ora_inizio")
);




CREATE TABLE IF NOT EXISTS "squadre" (
	"nome" VARCHAR(64) NOT NULL,
	"slogan" VARCHAR(512) NOT NULL,
	"punteggio" INTEGER NOT NULL DEFAULT 0 CHECK (punteggio >= 0),
	"codice_fiscale_animatore_responsabile" CHAR(16) NOT NULL,
	PRIMARY KEY("nome"),
	FOREIGN KEY("codice_fiscale_animatore_responsabile") REFERENCES "animatori"("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "animati" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email_genitore" VARCHAR(254) NOT NULL,
	"telefono_genitore" CHAR(10) NOT NULL,
	"nome_squadra" VARCHAR(64) NOT NULL,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale"),
	FOREIGN KEY("nome_squadra") REFERENCES "squadre"("nome")
);




CREATE TABLE IF NOT EXISTS "attivita_faccende" (
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"nome" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	"nome_squadra" VARCHAR(64) NOT NULL,
	"tipologia_faccenda" TIPOLOGIA_FACCENDA NOT NULL,
	PRIMARY KEY("data_ora_inizio"),
	FOREIGN KEY("nome_squadra") REFERENCES "squadre"("nome")
);




CREATE TABLE IF NOT EXISTS "attivita_pasto" (
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"tipo" TIPOLOGIA_PASTO NOT NULL,
	"descrizione" TEXT,
	"codice_fiscale_cuoco_supervisore" CHAR(16) NOT NULL,
	"nome_pietanza" VARCHAR(64) NOT NULL,
	PRIMARY KEY("data_ora_inizio"),
	FOREIGN KEY("codice_fiscale_cuoco_supervisore") REFERENCES "cuochi"("codice_fiscale"),
	FOREIGN KEY("nome_pietanza") REFERENCES "pietanze"("nome")
);



ALTER TABLE "allergico"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "animati"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "animati"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "animatori"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "attivita_faccende"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "attivita_pasto"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "attivita_pasto"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "attivita_routine"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "collaboratori"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "contiene"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "contiene"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "cuochi"
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "partecipanti"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "prevede"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "prevede"
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "squadre"
ON UPDATE NO ACTION ON DELETE NO ACTION;