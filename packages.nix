{ haskellPackages, compiler ? "ghc784"  }:

with haskellPackages;
[
   ghc-mod
   hdevtools
   hlint
   base heist lens mtl snap snap-core snap-extras
   snaplet-postgresql-simple text
]