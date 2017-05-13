# criticalmaps-db
Database configuration

## Run migrations

```
docker build -t criticalmaps-db-migrations -f Dockerfile.migrations . && \
docker run -v $(pwd)/migrations/:/migrations/ criticalmaps-db-migrations up
```

docker exec -ti $(docker ps | grep criticalmapsdb_db | awk '{ print $1}') /bin/bash

psql -d criticalmaps -U bla
