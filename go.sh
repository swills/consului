#!/bin/sh

export CONSUL_BINARY_TYPE=oss
export CONSUL_COPYRIGHT_YEAR=$(date +%Y)
export CONSUL_VERSION=1.11.3

export GOPATH=$(mktemp -d)
gmake
cd ..
rm -rf pkg
mkdir -p pkg
mv ui/packages/consul-ui/dist pkg/web_ui
gmake static-assets
