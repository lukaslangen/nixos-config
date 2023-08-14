{ pkgs, ... }:

{
    home.packages = with pkgs; [
        htop
        fzf
        gnumake
        jq
    ];

    programs.man.enable = true;
}
