DEFCONFIG=cyanogen_cancro_defconfig
make ARCH=arm CROSS_COMPILE=~/workspace/toolchain/bin/arm-eabi- $DEFCONFIG
make CONFIG_NO_ERROR_ON_MISMATCH=y -j32 ARCH=arm CROSS_COMPILE=~/workspace/toolchain/bin/arm-eabi-