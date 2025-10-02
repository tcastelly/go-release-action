FROM quay.io/pypa/manylinux_2_28_x86_64

RUN yum -y update && yum clean all \
 && yum install -y \
      curl \
      wget \
      git \
      zip \
      jq \
      gcc \
      gcc-c++ \
      make \
 && yum clean all

COPY *.sh /
ENTRYPOINT ["/entrypoint.sh"]

LABEL maintainer="Thomas CASTELLY <thomas@castelly.fr>"
