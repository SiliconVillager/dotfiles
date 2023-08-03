-- Packer (plugin manager) settings

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Undo Tree
  use('mbbill/undotree')

  -- Git
  use('tpope/vim-fugitive')

  -- Theme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  --[[
  use({
	  'Mofiqul/dracula.nvim',
	  as = 'dracula',
	  config = function()
		  vim.cmd('colorscheme dracula')
	  end
  })
  ]]

end)
