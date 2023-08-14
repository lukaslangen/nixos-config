{ config, pkgs, ... }:

{
    users.users = {
        lukas = {
            isNormalUser = true;
            description = "Lukas Langen";
            extraGroups = [ "networkmanager" "wheel" ];
            shell = pkgs.zsh;
        };
    };
}
