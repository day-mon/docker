run chown -R 472:472 .data

run docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

move daemon.json to /etc/docker

done!
