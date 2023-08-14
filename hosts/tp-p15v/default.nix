{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./boot.nix
        ../shared
        ../../modules/gui.nix
    ];

    networking.hostName = "tp-p15v";
    system.stateVersion = "23.05";
}
