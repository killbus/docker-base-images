FROM baseware/python-uvloop:3.7

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
    pip install ruia; \
    apk add --no-cache --no-network --virtual .run-deps\
        $runDeps \
    ; \
    apk del --no-network .build-deps;