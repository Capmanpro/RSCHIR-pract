FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=1111
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

COPY init.sql /docker-entrypoint-initdb.d/