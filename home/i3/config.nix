{ config, lib, pkgs, ... }:

{
    xsession.windowManager.i3.config = {
        terminal = "alacritty";

        focus = {
            followMouse = false;
        };

        gaps = {
            inner = 8;
        };

        startup = [
            {
                command = "feh --bg-scale ~/.wallpaper.jpg";
                always = true;
                notification = false;
            }
        ];
    };

    home.file = {
        ".wallpaper.jpg".source = ./wallpaper.jpg;
    };
}
