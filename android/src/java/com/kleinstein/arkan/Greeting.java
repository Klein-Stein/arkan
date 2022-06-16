package com.kleinstein.arkan;

class Greeting {
    static {
        System.loadLibrary("arkan_aar_jni");
    }

    public native String greeting();
}