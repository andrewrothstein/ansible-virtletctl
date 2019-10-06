#!/usr/bin/env sh
VER=${1:-v1.5.1}
DIR=~/Downloads
MIRROR=https://github.com/Mirantis/virtlet/releases/download/${VER}

dl()
{
    local os=$1
    local suffix=${2:-}
    local file=virtletctl-${os}-${VER}
    local lfile=$DIR/$file
    local url=${MIRROR}/virtletctl${suffix}

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $os $(sha256sum $lfile | awk '{print $1}')
}

printf "  %s:\n" $VER
dl linux
dl darwin .darwin


