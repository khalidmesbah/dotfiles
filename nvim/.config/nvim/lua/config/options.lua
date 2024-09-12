local opt = vim.opt
local g = vim.g
local o = vim.o

--G-------------------------------------------------------------------------------

-- Must happen before plugins are loaded (otherwise wrong leader will be used)
g.maplocalleader = ' ' -- Set <space> as the leader key
g.mapleader = ' ' -- Set <space> as the leader key

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- disable netrw at the very start of your init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.have_nerd_font = true -- Set to true if you have a Nerd Font installed
g.neovide_transparency = 0.8

g.neovide_cursor_vfx_mode = 'railgun'
-- g.neovide_cursor_vfx_particle_lifetime = 5
-- g.neovide_cursor_vfx_opacity = 500.0
-- g.neovide_cursor_vfx_particle_density = 7.0
-- g.neovide_cursor_vfx_particle_speed = 10.0
-- g.neovide_cursor_vfx_particle_phase = 1.5 -- Only for the railgun vfx mode.
-- g.neovide_cursor_vfx_particle_curl = 1.0 -- Only for the railgun vfx mode.

--O-------------------------------------------------------------------------------

o.guifont = 'JetBrainsMono Nerd Font Mono:h16'

--OPTS-------------------------------------------------------------------------------
opt.splitright = true
opt.splitbelow = true
opt.list = false
opt.signcolumn = 'yes'
opt.updatetime = 250
opt.hlsearch = true
opt.number = false
opt.mouse = 'a'
opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.breakindent = true
opt.undofile = true
opt.timeoutlen = 300
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10
opt.showtabline = 1
opt.colorcolumn = '80'
opt.cursorcolumn = true
opt.cursorline = true
opt.tabpagemax = 1
opt.relativenumber = true
opt.guicursor = ''
opt.syntax = 'OFF'
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.title = true
opt.autoindent = true
opt.smartindent = true
o.backup = false
o.showcmd = false
o.cmdheight = 0
o.laststatus = 0
o.statusline = 'off'
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.wrap = false
opt.backspace = { 'indent,eol,start' }
opt.path:append '**'
opt.wildignore:append { '*/node_modules/*' }
opt.splitkeep = 'cursor'
opt.swapfile = false
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.conceallevel = 1
opt.spell = true
-- vim.cmd 'colorscheme retrobox'

--[[  use tabs instead of spaces
o.softtabstop = 4
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = false
o.smartindent = true 
]]
