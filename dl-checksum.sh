#!/usr/bin/env sh
VER=${1:-v1.5.1}
DIR=~/Downloads
MIRROR=https://github.com/Mirantis/virtlet/releases/download

dl()
{
    local ver=$1
    local os=$2
    local suffix=${3:-}
    local file=virtletctl-${os}-${ver}
    local lfile=$DIR/$file
    local url=${MIRROR}/v${ver}/virtletctl${suffix}

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $os $(sha256sum $lfile | awk '{print $1}')
}

dlver() {
    local ver=$1
    printf "  v%s:\n" $ver
    dl $ver linux
    dl $ver darwin .darwin
}

dlver ${1:-1.5.1}
