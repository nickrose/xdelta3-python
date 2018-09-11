#!/usr/bin/env bash
# build xdelta3 command line tool in the submodule directory, requires automake and libtool
set -e
set -x

cd xdelta/xdelta3
git clean -fX
glibtoolize
aclocal
autoconf
autoheader
automake --add-missing
./configure
make
cd ../..
