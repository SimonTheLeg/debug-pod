FROM alpine:3.12

LABEL maintainer="simon@codeconductor.io"

RUN apk add --update \
      bash \
      curl \
      jq \
      busybox-extras \
      bind-tools \
      tcpdump \
      openssl \
    && rm -rf /var/cache/apk/* \
    && echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
# NOTE: edge packages can be installed via `apk add package-name@edge`

# Keep alive forever; tail was used since alpine does not have sleep infinity
CMD [ "tail", "-f", "/dev/null" ]
