#!/usr/bin/env bash
set -eo pipefail

SERENITY_HOME=~/serenity

export PATH=$SERENITY_HOME/Toolchain/Local/i686/bin:$PATH
rm -rf build
meson -Dfreestanding=true --cross-file $SERENITY_HOME/Build/i686/meson-cross-file.txt build
ninja -C build
export DESTDIR=$SERENITY_HOME/Build/i686/Root
meson install -C build
