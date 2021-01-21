#!/usr/bin/env bash

cd `dirname $0`

. .env.sh

if [ `docker network ls --filter name=${BRIDGE_NAME} --filter driver=bridge | wc -l` == 2 ]; then
    echo "Bridge '${BRIDGE_NAME}' already exists"
else
    docker network create ${BRIDGE_NAME}
    echo "Bridge '${BRIDGE_NAME}' created"
fi

