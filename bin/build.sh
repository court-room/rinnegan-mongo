#!/bin/bash

clear

docker build  --compress --force-rm --tag rinnegan-mongo:latest .

docker image tag rinnegan-mongo:latest localhost:6000/rinnegan-mongo:latest

docker push localhost:6000/rinnegan-mongo:latest
