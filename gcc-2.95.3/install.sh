#! /bin/sh

PREFIX=/usr/local

patch -p1 < ../gcc-2.95.3.next.patch

configure --prefix=/storage2/opt --enable-languages='c,objc,c++,f77' --disable-shared --disable-threads --enable-cpp

make CFLAGS='-O' LIBCFLAGS='-g -O2' LIBCXXFLAGS='-g -O2 -fno-implicit-templates' bootstrap

make install

cd $PREFIX/lib/gcc-lib/m68k-next-nextstep3/2.95.3
patch -p0 < ../gcc.2.95.3.specs.patch
