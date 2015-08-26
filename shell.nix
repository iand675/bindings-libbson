{ nixpkgs ? import <nixpkgs> {}, compiler ? "default" }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, bindings-DSL, libbson, stdenv }:
      mkDerivation {
        pname = "bindings-libbson";
        version = "0.1.0.0";
        src = ./.;
        libraryHaskellDepends = [ base bindings-DSL ];
        libraryPkgconfigDepends = [ libbson ];
        homepage = "https://github.com/iand675/bindings-libbson";
        description = "Bindings to libbson";
        license = stdenv.lib.licenses.asl20;
      };

  haskellPackages = if compiler == "default"
                      then pkgs.haskellPackages
                      else pkgs.haskell.packages.${compiler};

  drv = haskellPackages.callPackage f {};

in

  if pkgs.lib.inNixShell then drv.env else drv
