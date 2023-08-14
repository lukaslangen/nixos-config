{ pkgs, ... }:

{
    imports = [
        ./common.nix
        ./shell.nix
        ./terminals.nix
    ];

    home.sessionVariables = {
        EDITOR = "nvim";
        BROWSER = "firefox";
        TERMINAL = "alacritty";
    };

    home.shellAliases = {
        hsw = "home-manager switch";
        m = "make";
    };
}
