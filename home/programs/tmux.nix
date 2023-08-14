{ pkgs, ... }:

{
    programs.tmux = {
        enable = true;
        shortcut = "a";
        keyMode = "vi";
    };
}
