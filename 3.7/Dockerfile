FROM python:3.7-alpine

RUN set -eux; \
    \
    runDeps=" \
        libxml2 \
        libxslt \
    "; \
    \
    buildDeps=" \
        build-base \
        libxslt-dev \
        libxml2-dev \
    "; \
    \
    apk add --no-cache --virtual .build-deps \
        $runDeps \
        $buildDeps \
    ; \
    \
    pip install lxml; \
    apk add --no-cache --no-network --virtual .run-deps\
        $runDeps \
    ; \
    apk del --no-network .build-deps;