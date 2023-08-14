{ pkgs, ... }:

{
    programs.rofi = {
        enable = true;

        extraConfig = {
            modi = "window,drun,ssh,combi";
            combi-mode = "drun,ssh";
            show-icons = true;
        };
    };
}
