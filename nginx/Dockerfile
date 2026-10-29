ARG NGINX_TAG
FROM docker.io/nginx:${NGINX_TAG}
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ca-certificates curl \
    && curl -fsSL https://github.com/nginx/nginx-prometheus-exporter/releases/download/v1.5.3/nginx-prometheus-exporter_1.5.3_linux_amd64.tar.gz -o /tmp/nginx-prometheus-exporter.tar.gz \
    && tar -xzf /tmp/nginx-prometheus-exporter.tar.gz -C /tmp \
    && install -m 0755 /tmp/nginx-prometheus-exporter /usr/local/bin/nginx-prometheus-exporter \
    && rm -f /tmp/nginx-prometheus-exporter /tmp/nginx-prometheus-exporter.tar.gz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY --chmod=0755 nginx-prometheus-exporter.sh /docker-entrypoint.d/nginx-prometheus-exporter.sh
COPY nginx.conf /etc/nginx/nginx.conf
