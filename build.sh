#!/bin/bash

# Variable
A_BUILDDIR=./build
A_OUTDIR=$A_BUILDDIR/out
A_ANDROID_SDK=$ANDROID_HOME
A_ANDROID_NDK=$ANDROID_NDK_HOME
A_ANDROID_MIN_API_LEVEL=29


# Check for .env configuration
if [ -f .env ]; then
    source .env
fi

# Create build and output directories if they do not exist
mkdir -p $A_BUILDDIR
mkdir -p $A_OUTDIR

# Check if Android NDK was set
if [[ ! -z $A_ANDROID_NDK ]]; then

    # Build the library for Android
    for ABI in "arm64-v8a" "x86_64" "x86" "armeabi-v7a"; do

        LOCAL_BUILDDIR=$A_BUILDDIR/android/$ABI
        LOCAL_OUTDIR=$A_OUTDIR/android/$ABI
        mkdir -p $LOCAL_BUILDDIR
        mkdir -p $LOCAL_OUTDIR

        cmake -S . -B $LOCAL_BUILDDIR \
            -DCMAKE_TOOLCHAIN_FILE=$A_ANDROID_NDK/build/cmake/android.toolchain.cmake \
            -DANDROID_ABI=$ABI \
            -DANDROID_NATIVE_API_LEVEL=$A_ANDROID_MIN_API_LEVEL

        cmake --build $LOCAL_BUILDDIR -j 4
        cp $LOCAL_BUILDDIR/*.so $LOCAL_OUTDIR

    done
fi