#!/bin/bash

# https://hub.docker.com/_/mysql

# run the mysql database container
docker container run -d -e MYSQL_DATABASE=curso_docker -e MYSQL_USER=docker_usr -e MYSQL_PASSWORD=docker_pwd -e MYSQL_ROOT_PASSWORD=docker_pwd --name desafio02 mysql

# access the container to check where the mysql is located (the container does not have `which` command installed)
# docker container exec -it desafio01 /bin/bash -c 'which mysql' --> /bin/bash: line 1: which: command not found
docker container exec -it desafio02 /bin/bash -c 'find . -executable -type f | grep mysql$'

# check the commands available in the mysql terminal
docker container exec -it desafio02 /usr/bin/mysql --help

# to run the psql terminal
docker container exec -it desafio02 /usr/bin/mysql --database=curso_docker --user=docker_usr --password 
exit