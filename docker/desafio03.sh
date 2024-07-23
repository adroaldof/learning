#!/bin/bash

# https://hub.docker.com/_/mongo

# run the mongo database container
docker container run -d -e MONGO_INITDB_ROOT_USERNAME=mongo_usr -e MONGO_INITDB_ROOT_PASSWORD=mongo_pwd --name desafio03 mongo

# access the container to check where the mongod is located 
docker container exec -it desafio01 /bin/bash -c 'which mongosh'

# check the commands available in the mongo terminal
docker container exec -it desafio03 /usr/bin/mongosh --help

# to run the psql terminal
docker container exec -it desafio03 /usr/bin/mongosh --username mongo_usr --password 
exit