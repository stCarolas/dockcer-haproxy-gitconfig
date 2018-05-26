#!/bin/sh
/git-clone-config.sh
echo  "args: $@"
mkdir /usr/local/var || true
mkdir /usr/local/var/lib || true
mkdir /usr/local/var/lib/haproxy || true
chmod -R 777 /usr/local/var/lib/haproxy
/docker-entrypoint.sh "$@"
