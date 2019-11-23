with import <nixpkgs> {};
# { stdenv, pkgs, ... }:

# FIXME my stumpwm to add clx-truetype
#
# let
#   callPackage = pkgs.lib.callPackageWith quicklisp-to-nix-packages;
#   buildLispPackage = callPackage ./define-package.nix;
#   qlOverrides = callPackage ./quicklisp-to-nix-overrides.nix {};
#   "myStumpwm" = buildLispPackage
#     ((f: x: (x // (f x)))
#        (qlOverrides."stumpwm" or (x: {}))
#        (import ./quicklisp-to-nix-output/stumpwm.nix {
#          inherit fetchurl;
#            "alexandria" = quicklisp-to-nix-packages."alexandria";
#            "cl-ppcre" = quicklisp-to-nix-packages."cl-ppcre";
#            "clx" = quicklisp-to-nix-packages."clx";
#            "clx-truetype" = quicklisp-to-nix-packages."clx-truetype";
#        }));
# in

# Or, just add clx-truetype to shell-config.sh

stdenv.mkDerivation rec {
  pname = "stumpwm-wrapper";
  version = "0.0.1";
  unpackPhase = "true";

  buildInputs = [ pkgs.lispPackages.stumpwm
                  pkgs.lispPackages.clwrapper
                  pkgs.lispPackages.swank
                  pkgs.lispPackages.clx-truetype ];

  #   (import <nixpkgs> {}).writeScript("stumpwm-wrapper.sh", ''
  # THE CONTENT
  # '')

  buildPhase = ''
  '';

  installPhase = ''
    mkdir -p $out/bin
    script="$out"/bin/stumpwm-wrapper.sh
    mkdir -p "$(dirname "$script")"
    touch "$script"
    chmod a+x "$script"

    echo "#! ${stdenv.shell}" >> "$script"

    echo "source ${pkgs.lispPackages.stumpwm}/lib/common-lisp-settings/stumpwm-shell-config.sh" >> "$script"
    echo "source ${pkgs.lispPackages.clx-truetype}/lib/common-lisp-settings/clx-truetype-shell-config.sh" >> "$script"
    echo "source ${pkgs.lispPackages.swank}/lib/common-lisp-settings/swank-shell-config.sh" >> "$script"

    echo '"${pkgs.lispPackages.clwrapper}/bin/common-lisp.sh" --quit --eval "(require :stumpwm)" --eval "(stumpwm:stumpwm)"' >> "$script"
  '';

  meta = with stdenv.lib; {
    homepage = https://github.com/stumpwm/stumpwm;
    description = "A wrapper to use common-lisp.sh to launch stumpwm";
    license = licenses.gpl2;
    maintainers = [ maintainers.hebi ];
    platforms = platforms.unix;
  };
  # propagatedBuildInputs
}

  # config_script=
  # echo "source '$config_script'" >> "$script"

  # Actually it does not seem to matter
  # echo "export PATH=\"\$PATH:"${pkgs.lispPackages.clx-truetype}/bin\" >> "$script"

  # but this matters, NIX_LISP_ASDF_PATHS
  # echo "export NIX_LISP_ASDF_PATHS=\"\$NIX_LISP_ASDF_PATHS ${pkgs.lispPackages.clx-truetype}/lib/common-lisp/clx-truetype\"" >> "$script"
  # echo 'echo $NIX_LISP_ASDF_PATHS' >> "$script"

  # echo '"${pkgs.lispPackages.clwrapper}/bin/common-lisp.sh" --quit --eval "(require :clx-truetype)"' >> "$script"
