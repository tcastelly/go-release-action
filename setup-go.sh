#!/bin/bash -eux

GO_LINUX_PACKAGE_URL="https://dl.google.com/go/go1.18.linux-amd64.tar.gz"
if [[ ${INPUT_GOVERSION} == "1.17" ]]; then
    GO_LINUX_PACKAGE_URL="https://dl.google.com/go/go1.17.8.linux-amd64.tar.gz"
elif [[ ${INPUT_GOVERSION} == http* ]]; then
    GO_LINUX_PACKAGE_URL=${INPUT_GOVERSION}
fi

wget --progress=dot:mega ${GO_LINUX_PACKAGE_URL} -O go-linux.tar.gz
tar -zxf go-linux.tar.gz
mv go /usr/local/
mkdir -p /go/bin /go/src /go/pkg

export GO_HOME=/usr/local/go
export PATH=${GO_HOME}/bin/:$PATH
export GOPATH=/go


