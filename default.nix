{ mkDerivation, base, bindings-DSL, libbson, stdenv }:
mkDerivation {
  pname = "bindings-libbson";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base bindings-DSL ];
  libraryPkgconfigDepends = [ libbson ];
  homepage = "https://github.com/iand675/bindings-libbson";
  description = "Bindings to libbson";
  license = stdenv.lib.licenses.asl20;
}
