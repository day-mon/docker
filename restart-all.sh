#!/bin/sh

# Restarts everything

for i in ${HOME}/docker/*; do
    if [ -e "${i}/docker-compose.yml" ]; then
        cd "${i}"
        docker-compose down && docker-compose up -d
        cd ..
    fi
done