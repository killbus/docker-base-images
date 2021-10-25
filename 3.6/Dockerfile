FROM python:3.6-alpine

RUN set -eux; \
    \
    runDeps=" \
        yaml-dev \
    "; \
    \
    buildDeps=" \
        build-base \
    "; \
    \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .build-deps \
        $runDeps \
        $buildDeps \
    ; \
    \
    pip install pyyaml; \
    apk add --no-cache --no-network --virtual .run-deps\
        $runDeps \
    ; \
    apk del --no-network .build-deps;