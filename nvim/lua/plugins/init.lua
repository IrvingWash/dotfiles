local status, packer = pcall(require, 'packer');

if (not status) then
	print('Packer is not installed');
	return;
end

vim.cmd [[packadd packer.nvim]];

packer.startup(
	function(use)
		use 'wbthomason/packer.nvim';

		-- Color scheme
		use 'drewtempelmeyer/palenight.vim';

		-- Greeter
		use 'goolord/alpha-nvim';

		-- Pictograms
		use 'onsails/lspkind-nvim';

		-- Autopairs
		use "windwp/nvim-autopairs";

		-- Comments
		use 'numToStr/Comment.nvim';

		-- Fuzzy finder
		use {
			'nvim-telescope/telescope.nvim',
			tag = '0.1.0',
			requires = { 'nvim-lua/plenary.nvim' },
		}

		-- File explorer
		use {
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				"MunifTanjim/nui.nvim",
			},
		}

		-- Tabs
		use {
			'akinsho/bufferline.nvim',
			tag = "v3.*",
			requires = 'nvim-tree/nvim-web-devicons',
		}

		-- Buffer deletion
		use 'famiu/bufdelete.nvim';

		-- Status line
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}

		-- Git integration
		use 'lewis6991/gitsigns.nvim';

		-- Autocompletion
		use {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/nvim-cmp',
			'saadparwaiz1/cmp_luasnip',
		};

		-- Snippets
		use 'L3MON4D3/LuaSnip';

		-- LSP
		use {
			'neovim/nvim-lspconfig',
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		}

		-- Syntax highlighting
		use 'nvim-treesitter/nvim-treesitter';

		-- Terminal
		use {
			"akinsho/toggleterm.nvim",
			tag = '*'
		}
	end
);
