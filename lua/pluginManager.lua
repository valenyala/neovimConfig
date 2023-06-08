return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim';

	--themes to vary
	use { 'marko-cerovac/material.nvim' };

	--autoSave
	use { 'Pocco81/auto-save.nvim' };

	--file navigation
	use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	};

	--show buffers on top as tabs
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	--completion plugins
	use {'hrsh7th/nvim-cmp'};
	use {'hrsh7th/cmp-buffer'};
	use {'hrsh7th/cmp-path'};
	use {'hrsh7th/cmp-cmdline'};
	use {'hrsh7th/cmp-nvim-lsp'};
	use {'hrsh7th/cmp-omni'};
	use {'saadparwaiz1/cmp_luasnip'};

	--snippets
	use {'L3MON4D3/LuaSnip'};
	use {'rafamadriz/friendly-snippets'};

	--LSP
	use { "neovim/nvim-lspconfig" }
	use { "williamboman/mason.nvim" ,
		run = ":MasonUpdate"
	}
	use { "williamboman/mason-lspconfig.nvim" }
	--language parser
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'});

	--autocomplete () {} [] '' ""
	use { 'windwp/nvim-autopairs' }

	--use terminal in vim
	use { 'akinsho/toggleterm.nvim' }

	--file navigation with nvim-tree
	use { 'nvim-tree/nvim-tree.lua' }

end)
