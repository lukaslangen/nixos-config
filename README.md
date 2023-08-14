# Setup on new nixos system

> WIP: Neither complete nor (possibly) correct

1. Connect to internet: `nmcli dev wifi connect SSID`
2. `nix-shell -p git neovim`
3. Add `nix.settings.experimental-features = [ "nix-command" "flakes" ];` to /etc/nixos/configuration.nix
4. `sudo mv /etc/nixos /etc/nixos.bak`
5. `git clone https://github.com/lukaslangen/nixos-config.git`
6. `sudo ln -s ~/nixos-config/ /etc/nixos`
7. `cd ~/nixos-config`
8. `sudo nixos-rebuild switch --flake .#tp-p15v`
