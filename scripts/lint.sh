#!/bin/sh
SCRIPTS_DIR=`dirname "$0"`
. $SCRIPTS_DIR/.compose_env.sh $1

docker-compose --file $SCRIPTS_DIR/docker-compose.yml exec -T $EXEC_TARGET pylint $SERVICE_NAME
lint_exit_code=$?
docker-compose --file $SCRIPTS_DIR/docker-compose.yml exec -T $EXEC_TARGET pylint test
lint_exit_code=$(($lint_exit_code + $?))
exit $lint_exit_code