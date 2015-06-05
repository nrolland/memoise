{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc784" }:
let
   inherit (nixpkgs) pkgs;
   ghc = nixpkgs.pkgs.myhaskell.packages.${compiler}.ghcWithPackages (p: with p; [
       ghc-mod 
       hdevtools
       hlint
       base heist lens mtl snap snap-core snap-extras
       snaplet-postgresql-simple text
       ]);
in    
  pkgs.stdenv.mkDerivation {
   name = "my-haskell-env-0";
   buildInputs = [ ghc ];
   shellHook = "eval $(egrep ^export ${ghc}/bin/ghc)";
 }