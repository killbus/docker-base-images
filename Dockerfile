FROM python:3.7-alpine

RUN set -eux; \
    \
    buildDeps=" \
        build-base \
    "; \
    \
    apk add --no-cache --virtual .build-deps \
        $buildDeps \
    ; \
    \
    pip install uvloop; \
    apk del --no-network .build-deps;