FROM baseware/python-pillow:3.6

RUN set -eux; \
    \
    runDeps=" \
        # pyidm dependencies
        libcurl \
    "; \
    \
    apk add --no-cache --virtual $runDeps; \
    \
    pip install pyidm;