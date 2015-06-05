{ mkDerivation, base, heist, lens, mtl, snap, snap-core
, snap-extras, snaplet-postgresql-simple, stdenv, text
}:
mkDerivation {
  pname = "memoise";
  version = "0.8";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    base heist lens mtl snap snap-core snap-extras
    snaplet-postgresql-simple text
  ];
  description = "The world's laziest hyperlink shortener";
  license = stdenv.lib.licenses.bsd3;
}
