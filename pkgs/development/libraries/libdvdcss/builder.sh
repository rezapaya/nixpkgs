#! /bin/sh

. $stdenv/setup || exit 1

tar xvfz $src || exit 1
cd libdvdcss-* || exit 1
./configure --prefix=$out || exit 1
make || exit 1
make install || exit 1
strip -S $out/lib/*.a || exit 1
