package com.kleinstein.arkan;

public class Greeting {

    static {
        System.loadLibrary("arkanoid");
    }

    public native String greeting();
}
