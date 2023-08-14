{ config, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment = {
        systemPackages = with pkgs; [
            neovim
            pulsemixer
        ];
    };

    networking.networkmanager.enable = true;
    programs.zsh.enable = true;
    hardware.pulseaudio.enable = true;
}
