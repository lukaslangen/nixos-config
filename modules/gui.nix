{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    autorun = true;

    displayManager = {
      sddm.enable = true;
      defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };

    libinput.enable = true;

    layout = "us";
  };
}
