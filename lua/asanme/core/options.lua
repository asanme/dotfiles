local opt = vim.opt

-- line numbers 
opt.relativenumber = true
opt.number = true 

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrap
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark" 
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard settings this is pog
opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

-- this considers the "-" character a part of a word
opt.iskeyword:append("-")
