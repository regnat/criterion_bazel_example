let
  # The nixpkgs revision used.
  # Update it with care as a lot of things depend on it.
  nixpkgsRev = "75942f96b3f7136cdc9cc7d9704824f17fabec02";
  # The hash of the downloaded nixpkgs.
  # Don't forget to update it when changing the revision, you can get it with
  # nix-prefetch-url --unpack https://github.com/nixos/nixpkgs/archive/${nixpkgsRev}.tar.gz
  nixpkgsSha256 = "0ay4v4n856xl79ilym4w6vbp6pxzmn8l31j1ch98wa1lj7l71lgi";

  nixpkgs = fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/${nixpkgsRev}.tar.gz";
    sha256 = nixpkgsSha256;
  };
in
  args@{ overlays ? [], ... }:
  import nixpkgs args

