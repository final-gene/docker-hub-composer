#!/usr/bin/env sh

COMPOSER_COMMAND=$1
if [ "$1" = 'composer' ]; then
    COMPOSER_COMMAND=$2
fi

if [ "${COMPOSER_COMMAND}" = 'install' -o "${COMPOSER_COMMAND}" = 'require'  -o "${COMPOSER_COMMAND}" = 'update' ]; then
    composer global require hirak/prestissimo
fi

set -- /docker-entrypoint.sh "$@"

exec "$@"
