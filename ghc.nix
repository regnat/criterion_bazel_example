{ nixpkgs ? import <nixpkgs> {} }:
let haskellPackages = nixpkgs.haskell.packages.ghc843; in
haskellPackages.ghcWithPackages (p: with p;
[
  criterion
]
)

