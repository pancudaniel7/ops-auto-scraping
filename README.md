# OpsAutoScraping

## Docker

Deploy:

```sh
docker-compose -f [docker-compose-file] up -d
```

## Rabbitmq

Export definitions from a docker container

```sh
export CONTAINER_ID=[container-id] &&
docker exec -it $CONTAINER_ID /opt/rabbitmq/sbin/rabbitmqctl export_definitions /tmp/ definitions.file.json &&
docker cp $CONTAINER_ID:/tmp/definitions.file.json $HOME/definitions.file.json
```

Change TTL until message AKC
```sh
rabbitmqctl set_policy TTL ".*" '{"message-ttl":1200000}' --apply-to queues
```
