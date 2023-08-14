{ config, lib, pkgs, modulesPath, ... }:

let
  key_file = "/crypto_keyfile.bin";
  swap_id = "672fe1c1-9296-46fb-805b-5342dd650140";
  luks_device = "luks-" + swap_id;
  luks_device_device = "/dev/disk/by-uuid/";
in
{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    initrd = {
      secrets = {
        "${key_file}" = null;
      };

      # Swap on luks
      luks.devices.${luks_device} = {
        device = "${luks_device_device}";
        keyFile = "${key_file}";
      };
    };
  };
}
