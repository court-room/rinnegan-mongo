FROM mongo:4.4.5-bionic

LABEL maintainer="onlinejudge95"

COPY ./entrypoint.sh /docker-entrypoint-initdb.d/