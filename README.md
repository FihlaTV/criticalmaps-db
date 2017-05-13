# criticalmaps-db
Database configuration

## Run migrations

```
docker build -t criticalmaps-db-migrations -f Dockerfile.migrations . && \
docker run -v $(pwd)/migrations/:/migrations/ criticalmaps-db-migrations up
```
