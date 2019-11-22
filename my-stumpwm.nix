with import <nixpkgs> {}; # bring all of Nixpkgs into scope

{stdenv, fetchurl, pkgs, clwrapper}:

let
  inherit stdenv fetchurl clwrapper pkgs quicklisp-to-nix-packages;
  callPackage = pkgs.lib.callPackageWith quicklisp-to-nix-packages;
  buildLispPackage = callPackage ./define-package.nix;
  qlOverrides = callPackage ./quicklisp-to-nix-overrides.nix {};

in buildLispPackage
  ((f: x: (x // (f x)))
    (qlOverrides."stumpwm" or (x: {}))
    (import ./quicklisp-to-nix-output/stumpwm.nix {
      inherit fetchurl;
      "alexandria" = quicklisp-to-nix-packages."alexandria";
      "cl-ppcre" = quicklisp-to-nix-packages."cl-ppcre";
      "clx" = quicklisp-to-nix-packages."clx";
      "clx-truetype" = quicklisp-to-nix-packages."clx-truetype";
    }));

stdenv.mkDerivation rec {
  name = "hello-2.8";
  src = fetchurl {
    url = "mirror://gnu/hello/${name}.tar.gz";
    sha256 = "0wqd8sjmxfskrflaxywc7gqw7sfawrfvdxd9skxawzfgyy0pzdz6";
  };
}
