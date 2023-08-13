{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "aussiegeek";

      plugins = [
        "git"
	"fzf"
      ];
    };

    shellAliases = {
      hsw = "home-manager switch";
    };
  };
}
