#!/usr/bin/env bash

git submodule update --recursive --init && ./scripts/applyPatches.sh
if [ "$1" == "--jar" ]; then
    git config --global user.email "github-actions[bot] <41898282+github-actions[bot]@users.noreply.github.com>"
    git config --global user.name "github-actions"
    pushd FlameCord-Proxy
    mvn clean package -f pom.xml
fi
