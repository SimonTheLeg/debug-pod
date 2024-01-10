FROM alpine:3.19.0

LABEL maintainer="simon@codeconductor.io"

# NOTE: edge packages can be added via `apk add package-name@edge` and by adding the following repos
# RUN echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
#   && echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
#   && echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk add --update \
  bash \
  curl \
  jq \
  busybox-extras \
  bind-tools \
  tcpdump \
  openssl \
  && rm -rf /var/cache/apk/*

# Keep alive forever; tail was used since alpine does not have sleep infinity
# Needed so it stays active when using it inside Kubernetes
CMD [ "tail", "-f", "/dev/null" ]
