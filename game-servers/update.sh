#!/bin/bash

cd panel
docker-compose pull && docker-compose up -d

cd ..

cd wings
docker-compose pull && docker-compose up -d
