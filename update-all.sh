#!/bin/sh

# Basically does the job of watchtower for me

for i in ${HOME}/docker/*; do
    if [ -e "${i}/docker-compose.yml" ]; then
        cd "${i}"
        docker-compose pull -q
        docker-compose up -d
        cd ..
    fi
done