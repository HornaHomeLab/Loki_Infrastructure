# Loki_Infrastructure
##### version: 0.0.1

## Setup Docker logs

1. Install loki driver
```
docker plugin install grafana/loki-docker-driver:2.9.2 --alias loki --grant-all-permissions
```


2. adjust daemon.json
```JSON
{
    "log-level": "debug",
    "log-driver": "loki",
    "log-opts": {
        "loki-url": "http://codespace.horna.local:3100/loki/api/v1/push",
        "loki-batch-size": "400"
    }
}

```