#!/bin/sh
SCRIPTS_DIR=`dirname "$0"`
docker-compose --file $SCRIPTS_DIR/../services/$1/docker-compose.yml exec $1 pylint $1
docker-compose --file $SCRIPTS_DIR/../services/$1/docker-compose.yml exec $1 pylint test