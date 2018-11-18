let p = import ./nix {}; in

p.mkShell {
  buildInputs = [ p.bazel p.nix p.zip p.python ];
}
