mkdir -p .data
sudo chown -R 472:472 .data
docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
docker-compose up -d --force-recreate

echo "Nice you are done :)"
