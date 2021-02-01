FROM php:5.6.40-apache

LABEL maintainer="Ben Green <ben@bcgdesign.com>" \
    org.label-schema.name="Apache + PHP" \
    org.label-schema.version="latest" \
    org.label-schema.vendor="Ben Green" \
    org.label-schema.schema-version="1.0"

RUN \
    a2enmod rewrite \
    && docker-php-ext-install mysql \
    && apt update \
    && apt install wget

COPY ./overlay /

RUN chmod +x /usr/local/bin/healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=5 CMD [ "healthcheck" ]
