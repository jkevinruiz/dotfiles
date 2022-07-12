return {
	["goolord/alpha-nvim"] = {
		disable = false,
		config = function()
			require("plugins.configs.alpha")
		end,
	},

	["aserowy/tmux.nvim"] = {
		config = function()
			require("custom.plugins.configs.tmux").setup()
		end,
	},

	["github/copilot.vim"] = {},

	["jose-elias-alvarez/null-ls.nvim"] = {
		opt = true,
		setup = function()
			require("core.lazy_load").on_file_open("null-ls.nvim")
		end,
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.configs.null-ls").setup()
		end,
	},

	["ThePrimeagen/refactoring.nvim"] = {
		opt = true,
		setup = function()
			require("core.lazy_load").on_file_open("refactoring.nvim")
		end,
		after = {
			"plenary.nvim",
			"nvim-treesitter",
		},
		config = function()
			require("custom.plugins.configs.refactoring").setup()
		end,
	},

	["kylechui/nvim-surround"] = {
		opt = true,
		setup = function()
			require("core.lazy_load").on_file_open("nvim-surround")
		end,
		config = function()
			require("custom.plugins.configs.nvim-surround").setup()
		end,
	},
}
