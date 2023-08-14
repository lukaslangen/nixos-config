{ config, pkgs, ... }:

{
    imports = [
        ./shell
        ./programs
        ./i3
    ];

    nixpkgs.config.allowUnfree = true;

    home.username = "lukas";
    home.homeDirectory = "/home/lukas";
    home.stateVersion = "23.05";

    programs.home-manager.enable = true;
}
