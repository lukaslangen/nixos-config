{ config, lib, pkgs, ... }:

let
  mod = "Mod4";
in
{
  xsession.windowManager.i3 = {
    enable = true;
      
    extraConfig = ''
      default_border none
    '';

    config = {
      modifier = mod;
      terminal = "alacritty";

      focus = {
        followMouse = false;
      };

      gaps = {
        inner = 8;
      };

      keybindings = lib.mkOptionDefault {
        "${mod}+space" = "exec rofi -show combi";

	# Change focus
	"${mod}+h" = "focus left";
	"${mod}+j" = "focus down";
	"${mod}+k" = "focus up";
	"${mod}+l" = "focus right";

	# Move focused window
	"${mod}+Shift+h" = "move left";
	"${mod}+Shift+j" = "move down";
	"${mod}+Shift+k" = "move up";
	"${mod}+Shift+l" = "move right";

	# Orientation splitting
	"${mod}+Shift+v" = "split h";
	"${mod}+v" = "split v";

        # Toggle tiling / floating
	"${mod}+Shift+d" = "floating toggle";

	# Change focus between tiling / floating windows
	"${mod}+d" = "focus mode_toggle";
      };

      bars = [
        {
	  position = "top";
	}
      ];
    };
  };
}