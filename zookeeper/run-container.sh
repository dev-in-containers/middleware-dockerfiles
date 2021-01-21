#!/usr/bin/env bash

cd `dirname $0`

. ../.env.sh

../create-bridge.sh


docker run -d \
  --name ${ZOOKEEPER_CONTAINER_NAME} \
  --network ${BRIDGE_NAME} \
  ${ZOOKEEPER_IMAGE_NAME}
