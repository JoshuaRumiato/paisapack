CREATE TABLE IF NOT EXISTS "allergeni" (
	"nome" VARCHAR(64) NOT NULL,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "attivtà_extra" (
	"data_ora_fine" TIMESTAMPTZ NOT NULL,
	"data_ora_inizio" TIMESTAMPTZ NOT NULL,
	"tipo" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	PRIMARY KEY("data_ora_fine", "data_ora_inizio")
);




CREATE TABLE IF NOT EXISTS "edificio" (
	"via" VARCHAR(64) NOT NULL,
	"civico" INTEGER NOT NULL,
	"cap" INTEGER NOT NULL,
	"comune" VARCHAR(255) NOT NULL,
	"provincia" CHAR(2) NOT NULL,
	PRIMARY KEY("via", "civico", "cap", "comune", "provincia")
);




CREATE TABLE IF NOT EXISTS "materiali" (
	"nome" VARCHAR(64) NOT NULL,
	"unità_misura" VARCHAR(16) NOT NULL,
	"numero_utilizzi" INTEGER NOT NULL,
	"quantità" INTEGER NOT NULL,
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
	"posti_letto" SMALLINT NOT NULL,
	PRIMARY KEY("numero")
);




CREATE TABLE IF NOT EXISTS "contiene" (
	"nome_allergene" VARCHAR(64) NOT NULL,
	"nome_pietanza" VARCHAR(64) NOT NULL,
	PRIMARY KEY("nome_allergene", "nome_pietanza")
);




CREATE TABLE IF NOT EXISTS "partecipanti" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"nome" VARCHAR(64) NOT NULL,
	"cognome" VARCHAR(64) NOT NULL,
	-- attributo derivato da codice_fiscale
	"sesso" CHAR(1) NOT NULL,
	-- attributo derivato da codice_fiscale
	"data_nascita" DATE NOT NULL,
	"luogo_nascita" VARCHAR(255) NOT NULL,
	"foto_documento" VARCHAR(255) NOT NULL,
	"note" TEXT,
	"numero_stanza_pernottamento" SMALLINT NOT NULL,
	PRIMARY KEY("codice_fiscale")
);


COMMENT ON COLUMN "partecipanti"."sesso" IS 'attributo derivato da codice_fiscale';
COMMENT ON COLUMN "partecipanti"."data_nascita" IS 'attributo derivato da codice_fiscale';


CREATE TABLE IF NOT EXISTS "allergico" (
	"codice_fiscale_partecipante" CHAR(16) NOT NULL,
	"nome_allergene" VARCHAR(64) NOT NULL,
	PRIMARY KEY("codice_fiscale_partecipante", "nome_allergene")
);




CREATE TABLE IF NOT EXISTS "animatori" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email" VARCHAR(254) NOT NULL,
	"telefono" CHAR(10) NOT NULL,
	"voto" INTEGER,
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "attività_routine" (
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"descrizione" TEXT,
	"nome" VARCHAR(64) NOT NULL,
	"valutazione" TEXT,
	"codice_fiscale_animatore_supervisore" VARCHAR(16) NOT NULL,
	PRIMARY KEY("data_ora_inizio")
);




CREATE TABLE IF NOT EXISTS "collaboratori" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email" VARCHAR(254) NOT NULL,
	"telefono" CHAR(10) NOT NULL,
	"voto" INTEGER,
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "cuochi" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email" VARCHAR(254) NOT NULL,
	"telefono" VARCHAR(10) NOT NULL,
	"voto" INTEGER,
	"commento" TEXT,
	PRIMARY KEY("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "prevede" (
	"data_ora_inizio_attività" TIMESTAMP NOT NULL,
	"data_ora_fine_attività" TIMESTAMP NOT NULL,
	"nome_materiale" VARCHAR(64) NOT NULL,
	"quantità" INTEGER NOT NULL,
	PRIMARY KEY("data_ora_inizio_attività", "nome_materiale")
);




CREATE TABLE IF NOT EXISTS "squadre" (
	"nome" VARCHAR(64) NOT NULL,
	"slogan" VARCHAR(512) NOT NULL,
	"punteggio" INTEGER NOT NULL,
	"codice_fiscale_animatore_responsabile" CHAR(16) NOT NULL,
	PRIMARY KEY("nome")
);




CREATE TABLE IF NOT EXISTS "animati" (
	"codice_fiscale" CHAR(16) NOT NULL,
	"email_genitore" VARCHAR(254) NOT NULL,
	"telefono_genitore" CHAR(10) NOT NULL,
	"nome_squadra" VARCHAR(64) NOT NULL,
	PRIMARY KEY("codice_fiscale")
);




CREATE TABLE IF NOT EXISTS "attività_faccende" (
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"nome" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	"nome_squadra" VARCHAR(64) NOT NULL,
	PRIMARY KEY("data_ora_inizio")
);




CREATE TABLE IF NOT EXISTS "attività_pasto" (
	"data_ora_inizio" TIMESTAMP NOT NULL,
	"data_ora_fine" TIMESTAMP NOT NULL,
	"tipo" VARCHAR(64) NOT NULL,
	"descrizione" TEXT,
	"codice_fiscale_cuoco_supervisore" CHAR(16) NOT NULL,
	"nome_pietanza_servita" VARCHAR(64) NOT NULL,
	PRIMARY KEY("data_ora_inizio")
);



ALTER TABLE "allergico"
ADD FOREIGN KEY("codice_fiscale_partecipante") REFERENCES "partecipanti"("codice_fiscale")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "allergico"
ADD FOREIGN KEY("nome_allergene") REFERENCES "allergeni"("nome")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "animati"
ADD FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "animati"
ADD FOREIGN KEY("nome_squadra") REFERENCES "squadre"("nome")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "animatori"
ADD FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "attività_faccende"
ADD FOREIGN KEY("nome_squadra") REFERENCES "squadre"("nome")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "attività_pasto"
ADD FOREIGN KEY("codice_fiscale_cuoco_supervisore") REFERENCES "cuochi"("codice_fiscale")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "attività_pasto"
ADD FOREIGN KEY("nome_pietanza_servita") REFERENCES "pietanze"("nome")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "attività_routine"
ADD FOREIGN KEY("codice_fiscale_animatore_supervisore") REFERENCES "animatori"("codice_fiscale")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "collaboratori"
ADD FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "contiene"
ADD FOREIGN KEY("nome_allergene") REFERENCES "allergeni"("nome")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "contiene"
ADD FOREIGN KEY("nome_pietanza") REFERENCES "pietanze"("nome")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "cuochi"
ADD FOREIGN KEY("codice_fiscale") REFERENCES "partecipanti"("codice_fiscale")
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE "partecipanti"
ADD FOREIGN KEY("numero_stanza_pernottamento") REFERENCES "stanze"("numero")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "prevede"
ADD FOREIGN KEY("nome_materiale") REFERENCES "materiali"("nome")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "prevede"
ADD FOREIGN KEY("data_ora_inizio_attività") REFERENCES "attività_routine"("data_ora_inizio")
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE "squadre"
ADD FOREIGN KEY("codice_fiscale_animatore_responsabile") REFERENCES "animatori"("codice_fiscale")
ON UPDATE NO ACTION ON DELETE NO ACTION;