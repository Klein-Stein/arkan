load("@aar_with_jni//:aar_with_jni.bzl", "aar_with_jni")

aar_with_jni(
  name = "arkan_aar",
  android_library = ":arkan_android",
)

android_library(
  name = "arkan_android",
  srcs = ["src/java/com/kleinstein/arkan/Greeting.java"],
  resource_files = glob(["res/**/*"]),
  custom_package = "com.kleinstein.arkan",
  manifest = "Manifest.xml",
  deps = [":arkan_jni"],
)

cc_library(
  name = "arkan_jni",
  srcs = ["src/cpp/arkan.cpp"],
  deps = ["//lib/cpp:arkan_library"],
)
