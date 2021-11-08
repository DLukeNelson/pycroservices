#!/bin/sh
export SERVICE_NAME=$1
export COMPOSE_PROJECT_NAME=$SERVICE_NAME
export EXEC_TARGET=pycroservice