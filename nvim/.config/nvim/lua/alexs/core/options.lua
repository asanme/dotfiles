vim.cmd("let g:netrw_liststyle = 3")
--
-- Replacing in visual mode no longer yanks content
vim.api.nvim_set_keymap('v', 'p', '"_dP', { noremap = true, silent = true })
local opt = vim.opt

-- usual settings
opt.swapfile = false
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.clipboard = "unnamedplus"

-- tabs & spacing
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- splits
opt.splitright = true
opt.splitbelow = true
