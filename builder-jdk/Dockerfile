ARG BUILDER_JDK_TAG
FROM docker.io/eclipse-temurin:${BUILDER_JDK_TAG}
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ca-certificates curl jq python3 graphviz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
