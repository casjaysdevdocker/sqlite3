FROM casjaysdevdocker/alpine:latest

RUN apk -U upgrade && apk add sqlite3

ARG BUILD_DATE="$(date +'%Y-%m-%d %H:%M')" 

LABEL \
  org.label-schema.name="sqlite3" \
  org.label-schema.description="sqlite3 container based on Alpine Linux" \
  org.label-schema.url="https://hub.docker.com/r/casjaysdevdocker/sqlite3" \
  org.label-schema.vcs-url="https://github.com/casjaysdevdocker/sqlite3" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.version=$BUILD_DATE \
  org.label-schema.vcs-ref=$BUILD_DATE \
  org.label-schema.license="WTFPL" \
  org.label-schema.vcs-type="Git" \
  org.label-schema.schema-version="latest" \
  org.label-schema.vendor="CasjaysDev" \
  maintainer="CasjaysDev <docker-admin@casjaysdev.com>" 

HEALTHCHECK NONE
ENTRYPOINT [ "executable" ]
