-- Fixing the dumb tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line numbering and relative numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Turn off line wrapping
vim.opt.wrap = false 

-- Fixing searches
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Set scrolloff
vim.opt.scrolloff = 8

-- Sign column
vim.opt.signcolumn = "yes" 

-- 80-column line
vim.opt.colorcolumn = "80" 

-- Enable mouse support
vim.opt.mouse = "a"

-- Colorscheme
vim.cmd [[colorscheme gruvbox]]
vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]

-- Leader key
vim.g.mapleader = " "

-- Misc. thingies
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.foldenable = false
