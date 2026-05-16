# docker-images
My images for docker hub

## login
```sh
docker login docker.io
```

## nginx

```sh
cd nginx
docker build \
  -t docker.io/thanosapostolou/nginx:1.31.0 \
  -t docker.io/thanosapostolou/nginx:latest \
  .
docker push docker.io/thanosapostolou/nginx:1.31.0
docker push docker.io/thanosapostolou/nginx:latest
```
