#include <jni.h>
#include <string>
#include <arkan.hpp>

using namespace arkan;

JNIEXPORT jstring JNICALL
Java_com_kleinstein_arkan_Greeting_greeting(JNIEnv *env, jclass clazz) {
  return env->NewStringUTF(greeting().c_str());
}