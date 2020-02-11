#!/bin/bash
set -e

if [ -d "/tmp/.ssh" ]; then
    cp -R /tmp/.ssh /root/
    chmod -R 600 /root/.ssh/*
fi

exec "$@"
