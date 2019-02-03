#!/bin/bash
set -e
set -x

NGINX_CONF=/etc/nginx/conf.d/app.conf

sed -i -e 's|${CERT_PATH}|'"$CERT_PATH"'|' -e 's|${WEBDAV_DOMAIN}|'"$WEBDAV_DOMAIN"'|' $NGINX_CONF

nginx -g 'daemon off;'
