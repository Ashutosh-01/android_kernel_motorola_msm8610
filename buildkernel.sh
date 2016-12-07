#!/bin/bash
echo " Welcome to Photon Kernel Building "
cd ~/android/source/
export ARCH=arm
echo " Initializing ............. "
export CROSS_COMPILE=~/android/toolchain/arm-eabi-4.9/bin/arm-eabi-
make cm_condor_defconfig
echo " Getting optical resonator ready for energy pumping ........ "
export KBUILD_BUILD_USER=ABSathe
export KBUILD_BUILD_HOST=TheOpticalResonator
export CONFIG_NO_ERROR_ON_MISMATCH=y
echo " Pumping energy into Optical Resonator ..........."
echo " Building for device condor .......... "

rm -rf out/boot/zImage-dtb
echo " Starting build ..........."
make -j3 zImage-dtb
echo " Kernel is successfully compiled ......"
echo " Analysing emitted photons .........."
cp arch/arm/boot/zImage-dtb out/boot/zImage-dtb
cd out
zip -r Photon_condor_r4_$(date +'20%y%m%d').zip boot tools system META-INF
echo " Analysis complete ..........."
echo " Result :"
echo " Energy of emitted photons = 1.907 eV"
echo " Colour of emitted photons = Red "
echo " Kernel is successully packed !! "
echo " Name of Package : Photon_condor_r4_$(date +'20%y%m%d').zip "
echo " Flashable zip is present in directory source/out"
echo " #####Enjoy##### "
echo " ========================================================================================================"
echo "                                                                                                         "
echo " --------------------------------------------------------------------------------------------------------"
echo "                                                                                                         "
echo " |=====  |     |   /=====\  =====   /=====\   |\      |      |   / |=====  |===  |\      | |===== |      "
echo " |     \ |     |  /       \   |    /       \  | \     |      |  /  |       |   \ | \     | |      |      "
echo " |     / |     | |         |  |   |         | |  \    |      | /   |       |   / |  \    | |      |      " 
echo " |=====  |=====| |         |  |   |         | |   \   |      |/    |===    |===  |   \   | |===   |      "
echo " |       |     | |         |  |   |         | |    \  |      |\    |       |\    |    \  | |      |      "
echo " |       |     |  \       /   |    \       /  |     \ |      | \   |       | \   |     \ | |      |      "
echo " |       |     |   \=====/    |     \=====/   |      \|      |  \  |=====  |  \  |      \| |===== |===== "
echo "                                                                                                         "
echo "                                                                                                         "
echo "---------------------------------------------------------------------------------------------------------"
echo "                                      Developed  By - Ashutosh Sathe                                     "
echo " ========================================================================================================" 
