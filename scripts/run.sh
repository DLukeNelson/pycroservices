#!/bin/sh
SCRIPTS_DIR=`dirname "$0"`
source $SCRIPTS_DIR/.compose_env.sh $1
echo $SERVICE_NAME
docker-compose --file $SCRIPTS_DIR/docker-compose.yml up -d --build