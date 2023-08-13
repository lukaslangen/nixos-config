{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = ''
      set nocompatible
      
      set number
      set relativenumber
      
      set mouse=""
      let mapleader=" "

      set expandtab
      set smarttab
      set shiftround
      set tabstop=4
      set softtabstop=8
      set shiftwidth=4
      set autoindent

      nmap <leader>fs :w<cr>
      nmap <leader><space> :nohlearch<cr>
      nmap <leader>bb :Buffers<cr>
      nmap <leader>ff :Files<cr>
      nmap <leader>jk mmA;<esc>`m

      imap jj <esc>
      imap <C-o> <esc>o
      imap jk <esc>mmA;<esc>`ma'

      let g:netrw_liststyle=4
      let g:netrw_banner=0
    '';

    plugins = [
      pkgs.vimPlugins.vinegar
      pkgs.vimPlugins.commentary
      pkgs.vimPlugins.fzf-vim
    ];
  };
}
