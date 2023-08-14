{ config, lib, pkgs, ... }:

{
    imports = [
        ./config.nix
        ./keybindings.nix
        ./bars.nix
        ./menu.nix
    ];
}
