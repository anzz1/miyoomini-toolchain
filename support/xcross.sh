#!/bin/sh

xcross() {
if [ "$1" = "0" ]; then
unset ARCH
unset CC
unset CXX
unset CPP
unset STRIP
unset AR
unset RANLIB
unset OPTIMIZE
unset CFLAGS
unset CPPFLAGS
unset CXXFLAGS
unset LDFLAGS
unset SHARED
elif [ "$1" = "1" ]; then
export ARCH="arm"
export CC="$CROSS_COMPILE""gcc"
export CXX="$CROSS_COMPILE""g++"
export CPP="$CROSS_COMPILE""gcc -E"
export STRIP="$CROSS_COMPILE""strip"
export AR="$CROSS_COMPILE""gcc-ar"
export RANLIB="$CROSS_COMPILE""gcc-ranlib"
OPTIMIZE="${OPTIMIZE=-Os}"
export OPTIMIZE
export CFLAGS="$OPTIMIZE -Wall -marm -march=armv7ve+simd -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard -ffunction-sections -fdata-sections -Wl,--gc-sections -Wl,-s"
export CPPFLAGS="$CFLAGS"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="-Wl,--gc-sections -Wl,-s"
export SHARED="-fPIC"
fi
echo SYSROOT=$SYSROOT
echo ARCH=$ARCH
echo CC=$CC
echo CXX=$CXX
echo CPP=$CPP
echo STRIP=$STRIP
echo AR=$AR
echo RANLIB=$RANLIB
echo OPTIMIZE=$OPTIMIZE
echo CFLAGS=$CFLAGS
echo CPPFLAGS=$CPPFLAGS
echo CXXFLAGS=$CXXFLAGS
echo LDFLAGS=$LDFLAGS
echo SHARED=$SHARED
}
