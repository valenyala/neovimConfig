return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim';

	use ('cocopon/iceberg.vim');

	use { 'Pocco81/auto-save.nvim' };

	use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	};

	use {'nvim-tree/nvim-web-devicons'}
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'});

end)

