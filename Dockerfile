FROM composer:1.10.21

LABEL maintainer="frank.giesecke@final-gene.de"

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENV COMPOSER_HOME=/cache/.composer

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["composer"]
