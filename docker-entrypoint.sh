#!/usr/bin/bash
set -eu
export ADDRESS="${ADDRESS:-mainnet.infura.io}"
export CACHE_TIME="${CACHE_TIME:-5s}"
/usr/bin/envsubst '${ADDRESS} ${CACHE_TIME}' < ./default.conf.template > /etc/nginx/conf.d/default.conf
exec "$@"