cc_binary(
  name = "arkan",
  srcs = glob(["**/*.hpp", "**/*.cpp"]),
  visibility = ["//visibility:public"],
  linkshared = True,
)

cc_library(
  name = "arkan_library",
  # srcs = ["lib/cpp/libarkan.so"],
  deps = ["//lib/cpp:arkan"],
  visibility = ["//visibility:public"],
  includes = ["include"],
)