#!/usr/bin/env bash

cd `dirname $0`

. ../.env.sh

docker exec -it \
  ${KAFKA_CONTAINER_NAME} \
  /bin/bash
