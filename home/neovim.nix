{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = ":luafile ~/.config/nvim/custom-init.lua";

    plugins = [
      pkgs.vimPlugins.vinegar
      pkgs.vimPlugins.commentary
      pkgs.vimPlugins.fzf-vim
    ];
  };

  home.file = {
    ".config/nvim/custom-init.lua".source = ./nvim/init.lua;
    ".config/nvim/lua".source = ./nvim/lua;
  };
}
