package(default_visibility = ["//visibility:public"])

load(
  "@io_tweag_rules_haskell//haskell:haskell.bzl",
  "haskell_test",
  "haskell_library",
  "haskell_toolchain",
  "haskell_import",
)

haskell_toolchain(
  name = "ghc",
  version = "8.4.3",
  tools = "@ghc//:bin",
)

haskell_import( name = "base" )
haskell_import( name = "criterion" )

haskell_library(
    name = "lib",
    srcs = ["Lib.hs"],
    deps = [ ":base" ],
)
load("//:mybenchmark.bzl", "mybenchmark")

mybenchmark(
    name = "bench1",
    deps = [ ":base", ":lib", ":criterion", ],
    srcs = ["Bench.hs"],
)

mybenchmark(
    name = "bench2",
    srcs = ["OtherBench.hs"],
    deps = [ ":base", ":lib", ":criterion", ],
)

