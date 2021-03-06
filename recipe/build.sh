#! /usr/bin/env bash

mkdir _build && cd _build
cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    ../src
make -j$CPU_COUNT
$SRC_DIR/bin/coretranTest 18 1  # run unit tests
make install
