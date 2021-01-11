FROM mongo:4.4.3-bionic

LABEL maintainer="onlinejudge95"

COPY ./entrypoint.sh /docker-entrypoint-initdb.d/