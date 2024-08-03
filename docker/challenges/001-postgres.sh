#!/bin/bash

# https://hub.docker.com/_/postgres

# run the postgres database container
docker container run -d -e POSTGRES_DB=curso_docker -e POSTGRES_USER=docker_usr -e POSTGRES_PASSWORD=docker_pwd --name desafio01 postgres

# access the container to check where the psql is located
docker container exec -it desafio01 /bin/bash -c 'which psql'

# check the commands available in the psql terminal
docker container exec -it f5a /usr/bin/psql --help

# to run the psql terminal
docker container exec -it desafio01 /usr/bin/psql --dbname=curso_docker --username=docker_usr --password 
exit