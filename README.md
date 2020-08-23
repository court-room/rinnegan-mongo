# rinnegan-mongo

[![docker Actions Status](https://github.com/court-room/rinnegan-mongo/workflows/docker/badge.svg)](https://github.com/court-room/rinnegan-mongo/actions)
[![DeepSource](https://static.deepsource.io/deepsource-badge-light-mini.svg)](https://deepsource.io/gh/court-room/rinnegan-mongo/?ref=repository-badge)

## Pre-Requisite

Run the following commands for setting up the dependencies of your database

- Create a network with the given name

  ```bash
  $ docker network create --attachable rinnegan-backend
  ```

- Create a volume with the given name

  ```bash
  $ docker volume create rinnegan-streaming-data
  ```

## Setup

The databse can be used for locally testing the worker or the entire set of services.
In order to use the database start up the container using the following commands

- Build the image

  ```bash
  $ docker-compose build --compress
  ```

- Make sure you have a copy of `.env` file created by using `.env.example` as a template

- Launch the container

  ```bash
  $ docker-compose up --detach
  ```

## Development

- In order to verify that the container is up

  ```bash
  $ docker container ls
  CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
  234a358dcb5a        rinnegan-mongo      "docker-entrypoint.s…"   9 seconds ago       Up 8 seconds        27017/tcp           rinnegan-mongo
  ```

- To log in to the container and run custom commands

  ```bash
  $ docker container exec --interactive --tty rinnegan-mongo sh
  # mongo --username rinnegan --authenticationDatabase admin rinnegan
  ```

## Contact

For any issue please contact the following persons

- [onlinejudge95](https://github.com/onlinejudge95)
