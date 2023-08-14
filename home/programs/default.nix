{ pkgs, ... }:

{
    imports = [
        ./nvim
        ./browsers.nix
        ./tmux.nix
        ./git.nix
    ];

    home.packages = with pkgs; [
        feh
        jetbrains-toolbox
        jetbrains.phpstorm
    ];
}
