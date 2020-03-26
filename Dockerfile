FROM znc:latest
LABEL maintainer="Michele Bologna <github@michelebologna.net>"

RUN set -x \
    && apk add --no-cache \
        curl \
        py3-psycopg2
