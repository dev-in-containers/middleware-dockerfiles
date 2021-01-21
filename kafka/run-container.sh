#!/usr/bin/env bash

cd `dirname $0`

. ../.env.sh

../create-bridge.sh

docker run -d \
  --name ${KAFKA_CONTAINER_NAME} \
  --network ${BRIDGE_NAME} \
  ${KAFKA_IMAGE_NAME}
