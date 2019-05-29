#!/usr/bin/env sh
VER=v1.5.1
DIR=~/Downloads
MIRROR=https://github.com/Mirantis/virtlet/releases/download/${VER}

dl()
{
    PLATFORM=$1
    SUFFIX=${2:-}
    FILE=virtletctl${SUFFIX}
    URL=${MIRROR}/${FILE}
    wget -O $DIR/${FILE}-${VER} $URL
}

dl linux
dl darwin .darwin
sha256sum $DIR/virtletctl*-$VER

