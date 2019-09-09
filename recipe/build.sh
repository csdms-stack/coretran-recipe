#! /usr/bin/env bash

if [[ `uname -s` == 'Darwin' ]]; then
    export MACOSX_DEPLOYMENT_TARGET=""
fi

mkdir _build && cd _build
cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    ../src
make
$SRC_DIR/bin/coretranTest 18 1  # run unit tests
make install
