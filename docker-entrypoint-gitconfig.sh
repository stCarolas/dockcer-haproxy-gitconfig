#!/bin/sh
/git-clone-config.sh
echo  "args: $@"
/docker-entrypoint.sh "$@"
