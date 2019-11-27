ARG TAG

FROM zerolabssyseng/build:${TAG:-latest}
MAINTAINER "System Engineer (SysEng)"

RUN apk add --update autoconf automake && \
    rm -rf /var/cache/apk/*

COPY rootfs/ /
