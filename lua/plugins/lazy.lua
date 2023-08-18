local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

return lazy.setup({
	-- Colorscheme
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "navarasu/onedark.nvim" },
	-- { "rebelot/kanagawa.nvim" },
	-- { "rose-pine/neovim", name = "rose-pine" },
	-- { "sainnhe/everforest" }
	-- { "ellisonleao/gruvbox.nvim" },

	-- Utilities
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.2" },
	{
		"nvim-tree/nvim-tree.lua",
		commit = "bbb6d4891009de7dab05ad8fc2d39f272d7a751c",
		dependencies = { "nvim-tree/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" },
	},
	{ "nvim-treesitter/nvim-treesitter", commit = "63260da18bf273c76b8e2ea0db84eb901cab49ce" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352",
			lazy = true,
		},
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
	},
	{ "jiangmiao/auto-pairs" },
	{ "numToStr/Comment.nvim", commit = "a89339ffbee677ab0521a483b6dac7e2e67c907e" },
	{ "mbbill/undotree", commit = "485f01efde4e22cb1ce547b9e8c9238f36566f21" },
	{
		"ggandor/leap.nvim",
		dependencies = "tpope/vim-repeat",
		commit = "5efe985cf68fac3b6a6dfe7a75fbfaca8db2af9c",
	},
	{ "lewis6991/gitsigns.nvim", commit = "5a2b1205841bc06ffb15719b14d54987e17b22ae" },

	-- Tmux
	{ "alexghergh/nvim-tmux-navigation" },
	{ "tpope/vim-obsession" },

	-- Snippet related plugins
	{ "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" }, --snippet engine
	-- { "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }, -- a bunch of snippets to use

	-- cmp plugins
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lua",
		},
	}, -- The completion plugin

	-- LSP stuff
	{ "neovim/nvim-lspconfig", commit = "0d29cad8de3b2c654315203fc1fe12fde722a18a" }, -- enable LSP
	{ "williamboman/mason.nvim", commit = "68e6a153d7cd1251eb85ebb48d2e351e9ab940b8" },
	{ "williamboman/mason-lspconfig.nvim", commit = "e86a4c84ff35240639643ffed56ee1c4d55f538e" },
	{ "jose-elias-alvarez/null-ls.nvim", commit = "e172e1e3011e3d032dbeba6414644ba968570828" }, -- linter & formatter
	-- Should I add DAP?

	-- Others
	{ "github/copilot.vim" }, -- Copilot
})
