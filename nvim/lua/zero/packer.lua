-- This file can be loaded by calling `lua require('plugins')` from your init.vim

	-- Only required if you have packer configured as `opt`
	vim.cmd [[packadd packer.nvim]]

	return require('packer').startup(function(use)
	  -- Packer can manage itself
	  use 'wbthomason/packer.nvim'

	  use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.0',
		  -- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	  }

	  use({
		  'EdenEast/nightfox.nvim',
		  as = 'nightfox',
		  config = function()
			  vim.cmd.colorscheme('carbonfox')
		  end
	  })

	 use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	 use ('elel-dev/vim-astro-syntax')

	 use ('nvim-treesitter/playground')
	 use ('ThePrimeagen/harpoon')
	 use ('mbbill/undotree')
	 use ('tpope/vim-fugitive')
     use ('tc50cal/vim-terminal')
     use ('terryma/vim-multiple-cursors')
     use 'lervag/vimtex'
     use 'gosukiwi/vim-atom-dark'

	 use {
		 'VonHeikemen/lsp-zero.nvim',
		 requires = {
			 -- LSP Support
			 {'neovim/nvim-lspconfig'},
			 {'williamboman/mason.nvim'},
			 {'williamboman/mason-lspconfig.nvim'},

			 -- Autocompletion
			 {'hrsh7th/nvim-cmp'},
			 {'hrsh7th/cmp-buffer'},
			 {'hrsh7th/cmp-path'},
			 {'saadparwaiz1/cmp_luasnip'},
			 {'hrsh7th/cmp-nvim-lsp'},
			 {'hrsh7th/cmp-nvim-lua'},

			 -- Snippets
			 {'L3MON4D3/LuaSnip'},
			 {'rafamadriz/friendly-snippets'},
		 }
	 }

end)
