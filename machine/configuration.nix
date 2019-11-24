# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ ./hardware-configuration.nix
      ../nixos/window-manager.nix ];

  nix.nixPath = [
    "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
    "nixos-config=/home/hebi/git/nixos/machine/configuration.nix" ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # FIXME this works for WM and chrome, but does not seem to work for xterm and
  # urxvt. Thus I'm currently still using .Xresources
  services.xserver.dpi = 144;
  fonts.fontconfig.dpi = 144;

  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s31f6.useDHCP = true;

  networking.networkmanager.enable = true;
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # Set your time zone.
  time.timeZone = "America/Chicago";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget git emacs vim tmux
  ];

  # NOTE: This allows easy management of my system configuration, without
  # managing ~/.config/nixpkgs/config.nix, but it is not very convenient for
  # user to maintain packages, i.e. this file needs to be modified, and sudo
  # nixos-rebuild needs to be issued.
  users.users.hebi.packages =
    with pkgs;[ chromium
                # languages
                racket sbcl julia lispPackages.clwrapper lispPackages.swank
                # utilities
                silver-searcher translate-shell
                # X11
                rxvt_unicode ];

  fonts.fonts = with pkgs; [
    # noto-fonts
    # noto-fonts-cjk
    # noto-fonts-emoji
    # liberation_ttf
    # fira-code
    # fira-code-symbols
    # mplus-outline-fonts
    # dina-font
    # proggyfonts

    anonymousPro

    # FIXME this has otf fonts
    source-code-pro
    # FIXME these have ttc fonts, and not even copied to /share/X11-fonts.
    wqy_microhei
    wqy_zenhei
  ];

  # /run/current-system/sw/share/X11-fonts
  fonts.enableFontDir = true;
  fonts.enableDefaultFonts = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = { enable = true; enableSSHSupport = true; };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # FIXME I need to set per-uer in ~/.config/nixpkgs/config.nix
  # FIXME I should config this path to ~/git/nixos/xxx
  #
  # allowUnfree = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  # hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  nixpkgs.config.allowUnfree = true;
  services.xserver.videoDrivers = [ "nvidia" ];

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  # services.xserver.displayManager.slim.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.windowManager.stumpwm.enable = true;
  services.xserver.windowManager.stumpwm-wrapper.enable = true;
  # services.xserver.windowManager.xmonad.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.openbox.enable = true;
  # services.xserver.windowManager.sway.enable = true;
  # programs.sway.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hebi = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?

}
