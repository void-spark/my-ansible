#!/bin/bash
set -e

if [ -d "/tmp/.ssh" ]; then
    cp -R /tmp/.ssh /root/
    chmod -R 600 /root/.ssh/*
fi

echo "[user]" > /root/.gitconfig
echo "        name = void-spark" >> /root/.gitconfig
echo "        email = 81029971+void-spark@users.noreply.github.com" >> /root/.gitconfig

exec "$@"
