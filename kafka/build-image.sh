#!/usr/bin/env bash

cd `dirname $0`

. ../.env.sh

docker build . -t ${KAFKA_IMAGE_NAME}
