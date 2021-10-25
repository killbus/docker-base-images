FROM baseware/python-pillow:3.7

RUN set -eux; \
    \
    buildDeps=" \
        build-base \
        # pyidm dependencies
        curl-dev \
    "; \
    \
    runDeps=" \
        # pyidm dependencies
        libcurl \
    "; \
    \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .build-deps $buildDeps \
      $runDeps \
    ; \
    \
    pip install pyidm; \
    apk add --no-cache --no-network --virtual .run-deps \
        $runDeps \
    ; \
    apk del --no-network .build-deps;