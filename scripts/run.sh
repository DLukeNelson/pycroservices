#!/bin/sh
SCRIPTS_DIR=`dirname "$0"`
. $SCRIPTS_DIR/.compose_env.sh $1

docker-compose --file $SCRIPTS_DIR/docker-compose.yml up -d