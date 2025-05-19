FROM postgres:12.11

COPY DDL.sql /docker-entrypoint-initdb.d/00_DDL.sql
COPY DML.sql /docker-entrypoint-initdb.d/01_data.sql
