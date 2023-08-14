{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    autorun = true;

    desktopManager = {
        xterm.enable = false;
        xfce = {
            enable = true;
            noDesktop = true;
            enableXfwm = false;
        };
    };

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };

    displayManager = {
      sddm.enable = true;
      defaultSession = "xfce+i3";
    };

    libinput.enable = true;

    layout = "us";
  };
}
