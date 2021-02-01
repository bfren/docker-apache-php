# Docker Apache PHP

![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/bcgdesign/apache-php/latest) ![GitHub Workflow Status](https://img.shields.io/github/workflow/status/bencgreen/docker-apache-php/5.6-dev?label=github+5.6) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/bcgdesign/apache-php?label=docker) ![Docker Pulls](https://img.shields.io/docker/pulls/bcgdesign/apache-php?label=pulls) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/bcgdesign/apache-php/latest?label=size)

[Docker Repository](https://hub.docker.com/r/bcgdesign/apache-php) - [bcg|design ecosystem](https://github.com/bencgreen/docker)

Based on [official PHP image](https://hub.docker.com/_/php/) for PHP 5.6.40 with Apache, with `mysql` extension installed.

## Contents

* [Ports](#ports)
* [Volumes](#volumes)
* [Authors / Licence / Copyright](#authors)

## Ports

* 80

## Volumes

| Volume             | Purpose                                                 |
| ------------------ | ------------------------------------------------------- |
| `/var/www/html/`   | *From base image: files are served from this directory* |

## Authors

* [Ben Green](https://github.com/bencgreen)

## License

> MIT

## Copyright

> Copyright (c) 2021 Ben Green <https://bcgdesign.com>  
> Unless otherwise stated
