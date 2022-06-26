#!/bin/bash
set -e

if [ -d "/tmp/.ssh" ]; then
    cp -R /tmp/.ssh /home/vscode/
    chmod -R 600 /home/vscode/.ssh/*
fi

echo "[user]" > /home/vscode/.gitconfig
echo "        name = void-spark" >> /home/vscode/.gitconfig
echo "        email = 81029971+void-spark@users.noreply.github.com" >> /home/vscode/.gitconfig

exec "$@"
