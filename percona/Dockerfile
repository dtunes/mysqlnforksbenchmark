ARG VERSION=latest
FROM percona:${VERSION}

LABEL maintainer="diegotdai@gmail.com"

RUN apt-get -q update && apt-get install -yqq curl

RUN curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | bash \
    && apt -y install sysbench

COPY ./scripts/prepare.sh /docker-entrypoint-initdb.d/prepare.sh
COPY ./scripts/cleanup .
COPY ./scripts/bench .
COPY ./custom.cnf /etc/mysql/conf.d

RUN chmod +x bench cleanup /docker-entrypoint-initdb.d/prepare.sh

EXPOSE 3306

CMD ["mysqld"]