load(
  "@io_tweag_rules_haskell//haskell:haskell.bzl",
  "haskell_binary",
)

def mybenchmark(tags = [], args = [], **kwargs):
    haskell_binary(
      # Add the `benchmark` tag so that we can easily refer to it later
      tags = ["benchmark"] + tags,
      # Export the html report by default
      args = ["--output", "result.html"] + args,
      **kwargs
    )
