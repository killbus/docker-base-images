FROM baseware/python-pillow:3.6

RUN set -eux; \
    \
    buildDeps=" \
        build-base \
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