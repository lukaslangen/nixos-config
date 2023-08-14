local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.cursorline = true
opt.scrolloff = 5

opt.expandtab = true
opt.smarttab = true
opt.shiftround = true
opt.tabstop = 4
opt.softtabstop = 8
opt.shiftwidth = 4
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true
opt.fileignorecase = true
opt.incsearch = true

opt.mouse = ""

vim.cmd([[
    let g:netrw_liststyle = 4
    let g:netrw_banner = 0
]])
