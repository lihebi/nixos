with import <nixpkgs> {};

stdenv.mkDerivation rec {
  pname = "stumpwm-wrapper";
  version = "0.0.1";
  unpackPhase = "true";

  # FIXME propagatedInputs?
  buildInputs = [ pkgs.lispPackages.stumpwm
                  pkgs.lispPackages.clwrapper
                  pkgs.lispPackages.swank
                  pkgs.lispPackages.clx-truetype ];

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
}
