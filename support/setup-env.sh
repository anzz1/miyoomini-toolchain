export PATH="/opt/miyoomini-toolchain/usr/bin:${PATH}:/opt/miyoomini-toolchain/usr/arm-linux-gnueabihf/sysroot/bin"
export CROSS_COMPILE=/opt/miyoomini-toolchain/usr/bin/arm-linux-gnueabihf-
export PREFIX=/opt/miyoomini-toolchain/usr/arm-linux-gnueabihf/sysroot/usr
export SYSROOT=/opt/miyoomini-toolchain/arm-linux-gnueabihf/sysroot
export UNION_PLATFORM=miyoomini
source /root/xldd.sh
source /root/xcross.sh
