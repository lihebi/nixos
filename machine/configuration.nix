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
    # TODO when I want to manage multiple machines via NixOS, using hostname is a great option
    # "nixos-config=/path/to/machines/${config.networking.hostName}/configuration.nix"
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

  # for steam
  hardware.opengl.driSupport32Bit = true;
  # hardware.opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
  hardware.opengl.extraPackages = with pkgs; [ libva ];
  hardware.pulseaudio.support32Bit = true;

  # taken from https://github.com/NixOS/nixpkgs/issues/70536
  nixpkgs.overlays = [
    (self: super: {
      cudatoolkit = super.cudatoolkit_10;
      cudnn = super.cudnn_cudatoolkit_10;
      # FIXME cudnn is not recognized, see https://github.com/NixOS/nixpkgs/issues/20649
      julia = super.callPackage ./julia.nix {};
      emacs = super.emacs.override {
        imagemagick = super.imagemagick;
      };
    })];

  # NOTE: This allows easy management of my system configuration, without
  # managing ~/.config/nixpkgs/config.nix, but it is not very convenient for
  # user to maintain packages, i.e. this file needs to be modified, and sudo
  # nixos-rebuild needs to be issued.
  #
  # These pkgs symlink to /etc/profiles/per-user/hebi/lib
  #
  # The pkgs installed using nix-env goes into $HOME/.nix-profile/lib
  users.users.hebi.packages =
    let
      my-python-packages = python-packages: with python-packages; [
        pip
        setuptools
        # tensorflow depends on h5py. However, h5py requires libhdf5.so, and pip
        # install cannot find it
        h5py
      ];
      python-with-my-packages = pkgs.python3.withPackages my-python-packages;
      R-with-my-packages = pkgs.rWrapper.override{
        packages = with pkgs.rPackages; [
          ggplot2 dplyr xts
          pcalg Rgraphviz bnlearn
        ]; };
    in
      with pkgs; [
        # languages
        racket sbcl julia lispPackages.clwrapper lispPackages.swank
        # java
        adoptopenjdk-bin maven subversion

        R-with-my-packages
        python-with-my-packages
        # utilities
        silver-searcher translate-shell aspell htop pavucontrol unzip cloc unrar
        # X11
        rxvt_unicode konsole tigervnc xorg.xmodmap
        # FIXME cuda
        cudatoolkit cudnn
        # other
        #
        # I shall NOT put virtualbox here, otherwise error "kernel driver not
        # accessible": https://github.com/NixOS/nixops/issues/370
        vagrant imagemagick
        steam chromium qemu texlive.combined.scheme-full ];


  virtualisation.docker.enable = true;
  virtualisation.docker.enableNvidia = true;

  # do not sleep. FIXME it seems that it sleeps when I switched to gdm.
  powerManagement.enable = false;

  # virtualbox
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "hebi" ];

  # for open genera
  services.nfs.server.enable = true;

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
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  nixpkgs.config.allowUnfree = true;
  services.xserver.videoDrivers = [ "nvidia" ];

  # Enable touchpad support.
  services.xserver.libinput.enable = true;

  # Enable the KDE Desktop Environment.

  # FIXME slim seems to be broken
  # services.xserver.displayManager.slim.enable = true;

  # FIXME lightdm refuse to show up
  # services.xserver.displayManager.lightdm.enable = true;

  # FIXME sddm does not seem to source $HOME/.profile
  # services.xserver.displayManager.sddm.enable = true;

  # gdm does not seem to source $HOME/.profile either, I think this is nixos setting
  services.xserver.displayManager.gdm.enable = true;

  # THus, I'm manually sourcing ~/.profile before starting the display manager
  services.xserver.displayManager.sessionCommands = "source $HOME/.profile";

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
    extraGroups = [ "wheel" "networkmanager" "docker" "audio" ];
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?

  services.nginx.enable = true;
  services.nginx.virtualHosts."localhost" = {
    root = "/srv/www";
  };

}
