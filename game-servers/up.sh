#!/bin/bash

cd panel
docker-compose down && docker-compose up -d

cd ..

cd wings
docker-compose down && docker-compose up -d