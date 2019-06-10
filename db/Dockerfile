FROM mysql:8.0.16

ENV MYSQL_ROOT_PASSWORD="root" \
    MYSQL_DATABASE="test_database" \
    MYSQL_USER="docker" \
    MYSQL_PASSWORD="docker" \
    TZ="Asia/Tokyo"

COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

