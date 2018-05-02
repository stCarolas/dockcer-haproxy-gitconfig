#!/bin/sh
echo "check env for git repo"
if [ ! -z "$GIT_CONFIG_REPO" ];
then
    echo "cloning git repo"
    rm -rf /usr/local/etc/haproxy/*
    git clone $GIT_CONFIG_REPO /usr/local/etc/haproxy
fi
