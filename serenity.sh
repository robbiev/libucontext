#!/usr/bin/env bash
set -eo pipefail

export PATH=/home/robbie/serenity/Toolchain/Local/i686/bin:$PATH
rm -rf build
meson -Dfreestanding=true --cross-file ~/serenity/Build/i686/meson-cross-file.txt build
ninja -C build
export DESTDIR=~/serenity/Build/i686/Root
meson install -C build
