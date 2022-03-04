#!/bin/sh

VERSION=`cat VERSION`

git pull || exit 1
chmod +x run.sh

docker buildx build \
    --build-arg BF_IMAGE=apache-php \
    --build-arg BF_VERSION=${VERSION} \
    -f ${1:-8.0}/Dockerfile \
    -t apache-php-dev \
    . \
    && \
    docker run -it apache-php-dev sh
