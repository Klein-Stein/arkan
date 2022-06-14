#!/bin/bash

# Variables
A_BUILDDIR=./build
A_OUTDIR=$A_BUILDDIR/out
A_ANDROID_SDK=$ANDROID_HOME
A_ANDROID_NDK=$ANDROID_NDK_HOME
A_ANDROID_MIN_API_LEVEL=29
A_THREADS=4


# Check for .env configuration
if [ -f .env ]; then
    source .env
fi

# Create build and output directories if they do not exist
mkdir -p $A_BUILDDIR
mkdir -p $A_OUTDIR

###################
# Android platform
###################
if [[ ! -z $A_ANDROID_NDK ]]; then

    # Build the library for Android
    for ABI in "arm64-v8a" "x86_64" "x86" "armeabi-v7a"; do

        ANDROID_BUILDDIR=$A_BUILDDIR/android/$ABI
        ANDROID_OUTDIR=$A_OUTDIR/android/$ABI
        mkdir -p $ANDROID_BUILDDIR
        mkdir -p $ANDROID_OUTDIR

        cmake -S . -B $ANDROID_BUILDDIR \
            -DCMAKE_TOOLCHAIN_FILE=$A_ANDROID_NDK/build/cmake/android.toolchain.cmake \
            -DANDROID_ABI=$ABI \
            -DANDROID_NATIVE_API_LEVEL=$A_ANDROID_MIN_API_LEVEL

        cmake --build $ANDROID_BUILDDIR -j $A_THREADS
        cp $ANDROID_BUILDDIR/*.so $ANDROID_OUTDIR

    done
fi


# #################
# # Linux platform
# #################
# for ABI in "x86_64"; do

#     LINUX_BUILDDIR=$A_BUILDDIR/linux/$ABI
#     LINUX_OUTDIR=$A_OUTDIR/linux/$ABI
#     mkdir -p $LINUX_BUILDDIR
#     mkdir -p $LINUX_OUTDIR

#     cmake -S . -B $LINUX_BUILDDIR \
#         -DCMAKE_TOOLCHAIN_FILE=toolchains/${ABI}_linux_gnu.toolchain.cmake

#     cmake --build $LINUX_BUILDDIR -j $A_THREADS
#     cp $LINUX_BUILDDIR/*.so $LINUX_OUTDIR

# done

# ###################
# # Windows platform
# ###################
# for ABI in "x86_64"; do

#     WINDOWS_BUILDDIR=$A_BUILDDIR/windows/$ABI
#     WINDOWS_OUTDIR=$A_OUTDIR/windows/$ABI
#     mkdir -p $LINUX_BUILDDIR
#     mkdir -p $LINUX_OUTDIR

#     cmake -S . -B $WINDOWS_BUILDDIR \
#         -DCMAKE_TOOLCHAIN_FILE=toolchains/${ABI}_windows_gnu.toolchain.cmake

#     cmake --build $WINDOWS_BUILDDIR -j $A_THREADS
#     cp $WINDOWS_BUILDDIR/*.so $WINDOWS_OUTDIR

# done
