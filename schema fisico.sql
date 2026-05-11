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
	'pulizia stoviglie cena'
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




--TABLES

CREATE TABLE IF NOT EXISTS "allergeni" (
	"nome" VARCHAR(64),
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "attivita_extra" (
	"data_ora_inizio" TIMESTAMP,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"tipo" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	PRIMARY KEY("data_ora_inizio")
);




CREATE TABLE IF NOT EXISTS "edificio" (
	"via" VARCHAR(64),
	"civico" VARCHAR(8),
	"cap" CHAR(5),
	"comune" VARCHAR(255),
	"provincia" CHAR(2),
	PRIMARY KEY("via", "civico", "cap", "comune", "provincia")
);




CREATE TABLE IF NOT EXISTS "materiali" (
	"nome" VARCHAR(64),
	"unita_misura" VARCHAR(32) NOT NULL,
	"numero_utilizzi" INTEGER NOT NULL DEFAULT 1 CHECK (numero_utilizzi >= 0),
	"portare_in_autonomia" BOOLEAN NOT NULL,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "pietanze" (
	"nome" VARCHAR(64),
	"descrizione" TEXT,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "stanze" (
	"numero" SMALLINT,
	"piano" SMALLINT NOT NULL,
	"posti_letto" SMALLINT NOT NULL CHECK (posti_letto > 0),
	PRIMARY KEY("numero")
);




CREATE TABLE IF NOT EXISTS "contiene" (
	"nome_allergene" VARCHAR(64),
	"nome_pietanza" VARCHAR(64),
	PRIMARY KEY("nome_allergene", "nome_pietanza"),
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
	FOREIGN KEY (numero_stanza) REFERENCES stanze(numero)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);



CREATE TABLE IF NOT EXISTS "allergico" (
	"codice_fiscale_partecipante" CHAR(16),
	"nome_allergene" VARCHAR(64),
	PRIMARY KEY("codice_fiscale_partecipante", "nome_allergene"),
	FOREIGN KEY (codice_fiscale_partecipante)
        REFERENCES partecipanti(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
	FOREIGN KEY("nome_allergene") REFERENCES "allergeni"("nome")
);




CREATE TABLE IF NOT EXISTS "animatori" (
	"codice_fiscale" CHAR(16),
	"email" VARCHAR(254) NOT NULL CHECK (is_valid_email(email)),
	"telefono" CHAR(10) NOT NULL,
	"voto" INTEGER CHECK (is_valid_voto(voto)),
	"commento" TEXT,
	"capocampo" BOOLEAN DEFAULT false NOT NULL,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY (codice_fiscale)
        REFERENCES partecipanti(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);




CREATE TABLE IF NOT EXISTS "attivita_routine" (
	"data_ora_inizio" TIMESTAMP,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"descrizione" TEXT,
	"nome" VARCHAR(64) NOT NULL,
	"valutazione" TEXT,
	"codice_fiscale_animatore_supervisore" CHAR(16),
	"tipologia_routine" TIPOLOGIA_ROUTINE NOT NULL,
	PRIMARY KEY("data_ora_inizio"),
	FOREIGN KEY (codice_fiscale_animatore_supervisore)
        REFERENCES animatori(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);




CREATE TABLE IF NOT EXISTS "collaboratori" (
	"codice_fiscale" CHAR(16),
	"email" VARCHAR(254) NOT NULL CHECK (is_valid_email(email)),
	"telefono" CHAR(10) NOT NULL CHECK (is_valid_phone_number(telefono)),
	"voto" INTEGER CHECK (is_valid_voto(voto)),
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY (codice_fiscale)
        REFERENCES partecipanti(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);




CREATE TABLE IF NOT EXISTS "cuochi" (
	"codice_fiscale" CHAR(16),
	"email" VARCHAR(254) NOT NULL CHECK (is_valid_email(email)),
	"telefono" CHAR(10) NOT NULL CHECK (is_valid_phone_number(telefono)),
	"voto" INTEGER CHECK (is_valid_voto(voto)),
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY (codice_fiscale)
        REFERENCES partecipanti(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);




CREATE TABLE IF NOT EXISTS "prevede" (
	"data_ora_inizio_attivita" TIMESTAMP,
	"nome_materiale" VARCHAR(64),
	"quantita" INTEGER NOT NULL CHECK (quantita > 0),
	PRIMARY KEY("data_ora_inizio_attivita", "nome_materiale"),
	FOREIGN KEY("nome_materiale") REFERENCES "materiali"("nome"),
	FOREIGN KEY("data_ora_inizio_attivita") REFERENCES "attivita_routine"("data_ora_inizio")
);




CREATE TABLE IF NOT EXISTS "squadre" (
	"nome" VARCHAR(64),
	"slogan" TEXT NOT NULL,
	"punteggio" INTEGER NOT NULL DEFAULT 0 CHECK (punteggio >= 0),
	"codice_fiscale_animatore_responsabile" CHAR(16),
	PRIMARY KEY("nome"),
	FOREIGN KEY (codice_fiscale_animatore_responsabile)
        REFERENCES animatori(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);




CREATE TABLE IF NOT EXISTS "animati" (
	"codice_fiscale" CHAR(16),
	"email_genitore" VARCHAR(254) NOT NULL CHECK (is_valid_email(email)),
	"telefono_genitore" CHAR(10) NOT NULL CHECK (is_valid_phone_number(telefono_genitore)),
	"nome_squadra" VARCHAR(64),
	PRIMARY KEY("codice_fiscale"),
	FOREIGN KEY (codice_fiscale)
        REFERENCES partecipanti(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
	FOREIGN KEY("nome_squadra") REFERENCES "squadre"("nome")
);




CREATE TABLE IF NOT EXISTS "attivita_faccende" (
	"data_ora_inizio" TIMESTAMP,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"nome" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	"nome_squadra" VARCHAR(64),
	"tipologia_faccenda" TIPOLOGIA_FACCENDA NOT NULL,
	PRIMARY KEY("data_ora_inizio"),
	FOREIGN KEY("nome_squadra") REFERENCES "squadre"("nome")
);




CREATE TABLE IF NOT EXISTS "attivita_pasto" (
	"data_ora_inizio" TIMESTAMP,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"tipo" TIPOLOGIA_PASTO NOT NULL,
	"descrizione" TEXT,
	"codice_fiscale_cuoco_supervisore" CHAR(16),
	"nome_pietanza" VARCHAR(64),
	PRIMARY KEY("data_ora_inizio"),
	FOREIGN KEY (codice_fiscale_cuoco_supervisore)
        REFERENCES cuochi(codice_fiscale)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
	FOREIGN KEY("nome_pietanza") REFERENCES "pietanze"("nome")
);



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

-- INSERT/UPDATE
CREATE OR REPLACE FUNCTION check_single_ruolo_insert_update()
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
	IF cnt<>1 THEN
		RAISE EXCEPTION 'Un partecipante deve avere sempre un unico ruolo';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_partecipanti_ruolo_insert_update ON partecipanti;
CREATE CONSTRAINT TRIGGER trg_partecipanti_ruolo_insert_update
AFTER INSERT OR UPDATE ON partecipanti
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_insert_update();

DROP TRIGGER IF EXISTS trg_animatori_ruolo_insert_update ON animatori;
CREATE CONSTRAINT TRIGGER trg_animatori_ruolo_insert_update
AFTER INSERT OR UPDATE ON animatori
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_insert_update();

DROP TRIGGER IF EXISTS trg_collaboratori_ruolo_insert_update ON collaboratori;
CREATE CONSTRAINT TRIGGER trg_collaboratori_ruolo_insert_update
AFTER INSERT OR UPDATE ON collaboratori
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_insert_update();

DROP TRIGGER IF EXISTS trg_animati_ruolo_insert_update ON animati;
CREATE CONSTRAINT TRIGGER trg_animati_ruolo_insert_update
AFTER INSERT OR UPDATE ON animati
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_insert_update();

DROP TRIGGER IF EXISTS trg_cuochi_ruolo_insert_update ON cuochi;
CREATE CONSTRAINT TRIGGER trg_cuochi_ruolo_insert_update
AFTER INSERT OR UPDATE ON cuochi
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_insert_update();


--DELETE
CREATE OR REPLACE FUNCTION check_single_ruolo_delete()
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
	WHERE codice_fiscale = OLD.codice_fiscale;
	IF cnt>1 THEN
		RAISE EXCEPTION 'Un partecipante deve avere sempre un unico ruolo';
    END IF;
	IF cnt=0 THEN
		SELECT COUNT(*)
		INTO cnt
		FROM partecipanti
		WHERE codice_fiscale = OLD.codice_fiscale;
		IF cnt<>0 THEN
			RAISE EXCEPTION 'Un partecipante non puo rimanere senza ruolo';
	    END IF;
    END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_partecipanti_ruolo_delete ON partecipanti;
CREATE CONSTRAINT TRIGGER trg_partecipanti_ruolo_delete
AFTER DELETE ON partecipanti
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_delete();

DROP TRIGGER IF EXISTS trg_animatori_ruolo_delete ON animatori;
CREATE CONSTRAINT TRIGGER trg_animatori_ruolo_delete
AFTER DELETE ON animatori
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_delete();

DROP TRIGGER IF EXISTS trg_collaboratori_ruolo_delete ON collaboratori;
CREATE CONSTRAINT TRIGGER trg_collaboratori_ruolo_delete
AFTER DELETE ON collaboratori
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_delete();

DROP TRIGGER IF EXISTS trg_animati_ruolo_delete ON animati;
CREATE CONSTRAINT TRIGGER trg_animati_ruolo_delete
AFTER DELETE ON animati
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_delete();

DROP TRIGGER IF EXISTS trg_cuochi_ruolo_delete ON cuochi;
CREATE CONSTRAINT TRIGGER trg_cuochi_ruolo_delete
AFTER DELETE ON cuochi
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION check_single_ruolo_delete();