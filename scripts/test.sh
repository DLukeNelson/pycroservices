#!/bin/sh
SCRIPTS_DIR=`dirname "$0"`
. $SCRIPTS_DIR/.compose_env.sh $1

docker-compose --file $SCRIPTS_DIR/docker-compose.yml exec -T $EXEC_TARGET coverage run -m pytest .
test_exit_code=$?
docker-compose --file $SCRIPTS_DIR/docker-compose.yml exec -T $EXEC_TARGET coverage report
exit $test_exit_code