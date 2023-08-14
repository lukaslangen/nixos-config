{ pkgs, ... }:

{
    imports = [
        ./keyboard.nix
        ./locale.nix
        ./sys-programs.nix
        ./user.nix
    ];
}
