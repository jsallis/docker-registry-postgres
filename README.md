# docker-registry-postgres

A containerized docker registry based on the [official image](https://registry.hub.docker.com/_/registry/),
pre-configured with Postgres support for search indexing

A pre-built image is available at the [Docker Hub Registry](https://registry.hub.docker.com/u/jsallis/docker-registry-postgres/)

#### Example usage

```
docker run \
         -e SETTINGS_FLAVOR=s3 \
         -e AWS_BUCKET=mybucket \
         -e STORAGE_PATH=/registry \
         -e AWS_KEY=myawskey \
         -e AWS_SECRET=myawssecret \
         -e SQLALCHEMY_INDEX_DATABASE=postgresql://user:pass@postgres_host/docker_registry \
         -p 5000:5000 \
         jsallis/docker-registry-postgres
```
