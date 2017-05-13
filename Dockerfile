FROM postgres

ENV POSTGRES_USER apascualco
ENV POSTGRES_PASSWORD apascualco
ENV POSTGRES_DB apascualco

COPY inicial.sql /docker-entrypoint-initdb.d/
