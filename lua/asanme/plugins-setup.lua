-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- package manager
return packer.startup(function(use)
	use("wbthomason/packer.nvim")
    -- colorscheme
	use("bluz71/vim-nightfly-guicolors") 
    -- tmux & split window navigation
	use("christoomey/vim-tmux-navigator") 
    -- maximizes and restores current window
	use("szw/vim-maximizer") 

	-- essential plugins
    
    -- add, delete, change surroundings (it's awesome)
	use("tpope/vim-surround") 

    -- replace with register contents using motion (gr + motion)
	use("vim-scripts/ReplaceWithRegister") 
    if packer_bootstrap then
        require("packer").sync()
    end
end)
