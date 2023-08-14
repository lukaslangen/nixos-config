{ config, pkgs, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./boot.nix
        ../shared/locale.nix
        ../shared/user.nix
        ../shared/sys-programs.nix
        ../../modules/gui.nix
    ];

    networking.hostName = "tp-p15v";
    system.stateVersion = "23.05";
}
