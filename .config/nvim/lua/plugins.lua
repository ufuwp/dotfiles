vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'morhetz/gruvbox'
	-- like jetbrains
	--use 'doums/darcula'
	
	-- fuzzy finder
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'

	-- comment/ uncomment 
	use 'tpope/vim-commentary'

	-- for closing braces automatically
	use {
	"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	-- introduces indent guides
	use "lukas-reineke/indent-blankline.nvim"

	-- facilitates lsp configuration
	use 'neovim/nvim-lspconfig'

	-- auto completion (smarter than native)
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- snippet engine
	use 'hrsh7th/vim-vsnip'

	-- treesitter: better syntax tree than native nvim
	use {
			'nvim-treesitter/nvim-treesitter',
			run = ':TSUpdate'
	}

	-- shows function signature while typing
	-- use 'ray-x/lsp_signature.nvim'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	-- formatter
	use'sbdchd/neoformat'

	-- beautiful and easy-to-customize statusbar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- glsl syntax highlight
	use 'tikhomirov/vim-glsl'
end)
