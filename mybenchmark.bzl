load(
  "@io_tweag_rules_haskell//haskell:haskell.bzl",
  "haskell_binary",
)

def mybenchmark(
    name,
    srcs,
    deps = [],
    testonly = True,
    tags = [],
    args = [],
    size = "enormous",
    **kwargs
  ):
  binary_name = name + "@binary"
  haskell_binary(
    name = binary_name,
    testonly = testonly,
    srcs = srcs,
    deps = deps,
    **kwargs
  )
  native.sh_test(
      name = name,
      size = size,
      tags = tags + ["benchmark", "exclusive"],
      srcs = ["//:criterion.sh"],
      args = ["$(location :{binary})".format(binary = binary_name)] + args,
      data = [":" + binary_name],
      **kwargs
  )
