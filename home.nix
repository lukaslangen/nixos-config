{ config, pkgs, ... }:

{
  imports = [
    ./home
    ./home/tmux.nix
    ./home/git.nix
    ./home/zsh.nix
    ./home/rofi.nix
    ./home/i3.nix
    ./home/i3status-rust.nix
    ./home/alacritty.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.username = "lukas";
  home.homeDirectory = "/home/lukas";
  home.stateVersion = "23.05"; # Please read the comment before changing.

  home.packages = [
    pkgs.firefox
    pkgs.htop
    pkgs.fzf
    pkgs.feh
    pkgs.jetbrains-toolbox
    pkgs.jetbrains.phpstorm
    pkgs.gnumake
    pkgs.jq
  ];

  home.file = {
  };

  # You can also manage environment variables but you will have to manually
  # source
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/lukas/etc/profile.d/hm-session-vars.sh
  #
  # if you don't want to manage your shell through Home Manager.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
