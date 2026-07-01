FROM ubuntu:26.04

RUN apt-get update \
    && apt-get --yes install \
        php8.5-cli \
        php8.5-imagick \
        php8.5-mbstring \
        php8.5-xml \
        php8.5-zip \
    && apt-get -y upgrade

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /php

COPY composer.json composer.lock ./

RUN composer install

COPY psalm.xml .
COPY src ./src
