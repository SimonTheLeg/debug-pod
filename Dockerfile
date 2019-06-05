FROM alpine:3.7

LABEL maintainer="simon@codeconductor.io"

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
CMD [ "tail", "-f", "/dev/null" ]