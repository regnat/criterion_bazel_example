workspace(name = "criterion_rule")

http_archive(
  name = "io_tweag_rules_haskell",
  strip_prefix = "rules_haskell-850e0a59b8b0da63e0716e1a2c74de73cf7e1ce9",
  urls = ["https://github.com/tweag/rules_haskell/archive/850e0a59b8b0da63e0716e1a2c74de73cf7e1ce9.tar.gz"]
)

load("@io_tweag_rules_haskell//haskell:repositories.bzl", "haskell_repositories")
haskell_repositories()

http_archive(
  name = "io_tweag_rules_nixpkgs",
  strip_prefix = "rules_nixpkgs-0.2.3",
  urls = ["https://github.com/tweag/rules_nixpkgs/archive/v0.2.3.tar.gz"],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_package")

nixpkgs_package(
  name = "ghc",
  repository = "//:nix/default.nix",
  nix_file = "//:ghc.nix",
)

register_toolchains("//:ghc")
