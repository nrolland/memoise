{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc784" }:
nixpkgs.pkgs.myhaskell.packages.${compiler}.ghcWithPackages(p: import ./packages.nix { haskellPackages = p; inherit compiler; })