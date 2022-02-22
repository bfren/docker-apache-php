FROM bfren/apache:apache2.4.4x-2.0.4

ARG BF_IMAGE
ARG BF_VERSION

COPY ./overlay /
COPY ./5.6/overlay /
COPY ./5.6/PHP_BUILD /tmp/

RUN bf-install
