{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc784" }:
let
   inherit (nixpkgs) pkgs;
   ghc = import ./global.nix { inherit nixpkgs; inherit compiler; };
in    
  pkgs.stdenv.mkDerivation {
   name = "my-haskell-env-0";
   buildInputs = [ ghc ];
   shellHook = "eval $(egrep ^export ${ghc}/bin/ghc)";
 }