# docker-images

My images for Docker Hub.

## Build and push

Run these commands from the repository root, where `docker-compose.yml` and `.env` are located.

Log in to Docker Hub if needed:

```sh
docker login docker.io
```

Build and push all images defined in `docker-compose.yml`, including their configured tags:

```sh
docker compose build --pull
docker compose push
```
