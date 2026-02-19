#!/usr/bin/env bash

# ====================================================
#  Project : GLUTApp
#  Author  : Yohanes Oktanio
#  NIM     : 24-095
#  Website : yohanes.oktanio.dev
#
#  Deskripsi :
#  Script ini nge‑setup & nge‑build pake CMake
#  Kalo udah, kamu bisa langsung jalanin app‑nya
#
#  Usage:
#    ./build.sh setup          # init project (doang!)
#    ./build.sh                # build all
#    ./build.sh main           # build + run 'main' (main nya sesuaikan ya nama executablenya!)
#
#  Message :
#  Mesakno developere Mas/Mbak!
#  Jajal, tukokno, terus oleh maem
#  Kudu lancar, gak boleh error!
# ====================================================

set -e 

if [ "$1" = "setup" ]; then
    echo "Running setup..."
    mkdir -p build
    cd build
    cmake ..
    cd ..
else
    echo "Running build..."
    cd build
    cmake --build .
    cd ..
    if [ -n "$1" ]; then
        echo "Running Application"
        ./bin/$1
    fi
fi

echo "Done."
