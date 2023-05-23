FROM debian:buster-slim

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential \
  curl \
  wget \
  git \
  zip \
  jq


COPY *.sh /
ENTRYPOINT ["/entrypoint.sh"]

LABEL maintainer="Thomas CASTELLY <thomas@tcy.io>"
