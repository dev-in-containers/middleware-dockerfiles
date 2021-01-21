#!/usr/bin/env bash

cd `dirname $0`

. ../.env.sh

docker build . -t ${ZOOKEEPER_IMAGE_NAME}
