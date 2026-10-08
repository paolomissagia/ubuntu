#!/usr/bin/env bash

version=26.09.3

sudo apt install -y libxcb-xinerama0 libxcb-cursor0 libnss3 libxcb-icccm4 libxcb-keysyms1 zstd

dir=$(mktemp -d)

cd "$dir"

wget "https://github.com/ankitects/anki/releases/download/$version/anki-$version-linux-x86_64.tar.zst"

tar xaf "anki-$version-linux-x86_64.tar.zst"

cd anki-linux

sudo ./install.sh

cd -

rm -rf "$dir"
