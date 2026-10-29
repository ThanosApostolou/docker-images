ARG BUILDER_NODE_TAG
FROM docker.io/node:${BUILDER_NODE_TAG}
ENV PLAYWRIGHT_BROWSERS_PATH=/opt/playwright-browsers
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends make just ca-certificates curl jq python3 graphviz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && npm install --global --no-audit --no-fund "corepack@latest" \
    && corepack enable \
    && npx --yes playwright@latest install --with-deps chrome \
    && rm -rf "$(npm config get cache)"
