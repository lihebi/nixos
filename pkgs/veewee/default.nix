{ lib, bundlerEnv, ruby }:

bundlerEnv rec {
  name = "veewee-${version}";

  version = (import ./gemset.nix).veewee.version;
  inherit ruby;
  # expects Gemfile, Gemfile.lock and gemset.nix in the same directory
  gemdir = ./.;

  meta = with lib; {
    description = "TODO";
    homepage    = https://github.com/jedi4ever/veewee/;
    license     = with licenses; mit;
    maintainers = with maintainers; [ TODO ];
    platforms   = platforms.unix;
  };
}
