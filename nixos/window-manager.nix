{ config, lib, ... }:

# for singleton
with lib;

let
  cfg = config.services.xserver.windowManager;
  stumpwm-wrapper = (import ../pkgs/stumpwm-wrapper.nix);
in

{
  options = {
    services.xserver.windowManager.stumpwm-wrapper.enable = mkEnableOption "stumpwm-wrapper";
  };

  config = mkIf cfg.stumpwm-wrapper.enable {
    services.xserver.windowManager.session = singleton {
      name = "stumpwm-wrapper";
      start = ''
        ${stumpwm-wrapper}/bin/stumpwm-wrapper.sh &
        waitPID=$!
      '';
    };
    environment.systemPackages = [ stumpwm-wrapper ];
  };
}
