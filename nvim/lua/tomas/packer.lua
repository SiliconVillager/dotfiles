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

	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Undo Tree
  use('mbbill/undotree')

  -- Git
  use('tpope/vim-fugitive')

  -- Lightline
  use('itchyny/lightline.vim')

  -- Autoclose
  use('m4xshen/autoclose.nvim')

  -- Theme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
	})

	-- LSP core
	use 'neovim/nvim-lspconfig'

	-- Mason
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	-- Completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'

	-- Copilot
	use('github/copilot.vim')

	-- Comment
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

end)
