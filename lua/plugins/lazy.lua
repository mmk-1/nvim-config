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
	-- { "rebelot/kanagawa.nvim" }
	-- { "sainnhe/everforest" }
	-- { "ellisonleao/gruvbox.nvim" },

	-- Utilities
	{ "nvim-lua/plenary.nvim", commit = "253d34830709d690f013daf2853a9d21ad7accab" },
	{ "nvim-telescope/telescope.nvim", version = "0.1.0" },
	{
		"nvim-tree/nvim-tree.lua",
		commit = "bbb6d4891009de7dab05ad8fc2d39f272d7a751c",
		dependencies = { "nvim-tree/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" },
	},
	{ "nvim-treesitter/nvim-treesitter", commit = "350e7e5e31a5265fbccdf96b00a413c32583c2cc" },
	{ "akinsho/toggleterm.nvim", commit = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda" },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352",
			lazy = true,
		},
	},
	{ "jiangmiao/auto-pairs" },
	{ "numToStr/Comment.nvim", commit = "a89339ffbee677ab0521a483b6dac7e2e67c907e" },
	{ "mbbill/undotree", commit = "485f01efde4e22cb1ce547b9e8c9238f36566f21" },
	{ "ggandor/leap.nvim", dependencies = "tpope/vim-repeat", commit = "98a72ad93c629c49bd7127d342960cc1b159b620" },
	{ "ggandor/leap-spooky.nvim", commit = "79a7a3f28897d99e5da970e7121ac8ff738e1554" },

	-- Tmux
	{ "alexghergh/nvim-tmux-navigation" },
	{ "tpope/vim-obsession" },

	-- Snippet related plugins
	{ "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" }, --snippet engine
	{ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }, -- a bunch of snippets to use

	-- cmp plugins
	{ "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }, -- The completion plugin
	{ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }, -- buffer completions
	{ "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }, -- path completions
	{ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }, -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" },
	{ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" },

	-- LSP stuff
	{ "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" }, -- enable LSP
	{ "williamboman/mason.nvim", commit = "bfc5997e52fe9e20642704da050c415ea1d4775f" },
	{ "williamboman/mason-lspconfig.nvim", commit = "0eb7cfefbd3a87308c1875c05c3f3abac22d367c" },
	{ "jose-elias-alvarez/null-ls.nvim", commit = "e172e1e3011e3d032dbeba6414644ba968570828" }, -- linter/formatter
})
