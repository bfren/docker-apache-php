#!/bin/bash

set -euo pipefail

docker pull bfren/alpine

BASE_REVISION="2.2.30"
echo "Base: ${BASE_REVISION}"

PHP_VERSIONS="5.6 8.1"
for V in ${PHP_VERSIONS} ; do

    echo "PHP ${V}"
    PHP_MAJOR="$(echo ${V} | cut -c 1)"
    APACHE_BASE=`cat ./${V}/APACHE_BASE`

    DOCKERFILE=$(docker run \
        -v ${PWD}:/ws \
        -e BF_DEBUG=0 \
        bfren/alpine esh \
        "/ws/Dockerfile.esh" \
        BASE_REVISION=${BASE_REVISION} \
        APACHE_BASE=${APACHE_BASE} \
        PHP_MAJOR=${PHP_MAJOR} \
        PHP_MINOR=${V}
    )

    echo "${DOCKERFILE}" > ./${V}/Dockerfile

done

docker system prune -f
echo "Done."
