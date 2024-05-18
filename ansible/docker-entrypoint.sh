#!/bin/bash
set -e

if [ -d "/tmp/.ssh" ]; then
    cp -R /tmp/.ssh /home/ubuntu/
    chmod -R 600 /home/ubuntu/.ssh/*
fi

echo "[user]" > /home/ubuntu/.gitconfig
echo "        name = void-spark" >> /home/ubuntu/.gitconfig
echo "        email = 81029971+void-spark@users.noreply.github.com" >> /home/ubuntu/.gitconfig

exec "$@"
