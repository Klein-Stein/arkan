load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

android_sdk_repository(name = "androidsdk", build_tools_version = "30.0.0")
android_ndk_repository(name = "androidndk")

http_archive(
	name = "aar_with_jni",
	url = "https://api.github.com/repos/aj-michael/aar_with_jni/tarball/1f36219a9afc099e910f1cbbf95fd5e85b53fd55",
	sha256 = "5c799a29f36483c2f609b9b410b874ac355210b923e01fc0a620f5cb449ffcb2",
	strip_prefix = "aj-michael-aar_with_jni-1f36219",
	type = "tgz",
)
