#!/bin/sh

IMAGE=`cat VERSION`
PHP=${1:-8.2}

docker buildx build \
    --load \
    --build-arg BF_IMAGE=apache-php \
    --build-arg BF_VERSION=${IMAGE} \
    -f ${PHP}/Dockerfile \
    -t apache-php${PHP}-dev \
    . \
    && \
    docker run -it apache-php${PHP}-dev sh
