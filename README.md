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
docker exec -it $CONTAINER_ID /bin/rabbitmqctl export_definitions /tmp/ definitions.file.json &&
docker cp $CONTAINER_ID:/tmp/definitions.file.json $HOME/definitions.file.json
```

## Debug

```sh
export FLASK_DEBUG=1
export FLASK_END=development
```
