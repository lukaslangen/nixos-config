# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable swap on luks
  boot.initrd.luks.devices."luks-48842da3-446a-4d65-8c1c-3acfab7466d6".device = "/dev/disk/by-uuid/48842da3-446a-4d65-8c1c-3acfab7466d6";
  boot.initrd.luks.devices."luks-48842da3-446a-4d65-8c1c-3acfab7466d6".keyFile = "/crypto_keyfile.bin";

  nixpkgs.config.allowUnfree = true;

  networking.hostName = "tp-p15v"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  users.users.lukas = {
    isNormalUser = true;
    description = "Lukas Langen";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [ ];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim
    pulsemixer
  ];

  system.stateVersion = "23.05"; # Did you read the comment?

  programs.zsh.enable = true;

  services.xserver = {
    # start xserver without starting display manager
    enable = true;
    autorun = true;
    # displayManager.startx.enable = true;

    layout = "us";
    # xkbVariant = "";

    displayManager.sddm.enable = true;
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };

    displayManager.defaultSession = "none+i3";

    libinput.enable = true;

    # videoDrivers = [ "intel" ];
  };

  hardware.pulseaudio.enable = true;
}
