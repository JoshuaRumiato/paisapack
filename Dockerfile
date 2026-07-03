FROM postgres:15.18-trixie

COPY Sql/schema_fisico.sql /docker-entrypoint-initdb.d/01_schema_fisico.sql
COPY Sql/dati_di_test.sql /docker-entrypoint-initdb.d/02_dati_di_test.sql
