ARG BUILDER_RUST_TAG
FROM docker.io/rust:${BUILDER_RUST_TAG}
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends make just ca-certificates curl jq python3 graphviz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
