FROM python:3.6-alpine

RUN set -eux; \
    \
    buildDeps=" \
        build-base \
        # Pillow dependencies
        freetype-dev \
        fribidi-dev \
        harfbuzz-dev \
        jpeg-dev \
        lcms2-dev \
        openjpeg-dev \
        tcl-dev \
        tiff-dev \
        tk-dev \
        zlib-dev \
    "; \
    \
    runDeps=" \
        # Pillow dependencies
        libjpeg-turbo \
        openjpeg \
        tiff \
        libxcb \
    "; \
    \
    apk upgrade --no-cache; \
    apk add --no-cache --virtual .build-deps \
        $runDeps \
        $buildDeps \
    ; \
    \
    pip install Pillow; \
    apk add --no-cache --no-network --virtual .run-deps\
        $runDeps \
    ; \
    apk del --no-network .build-deps;