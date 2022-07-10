local M = {}

local override = require("custom.core.override")

M.ui = {
	theme = "chadracula",
}

M.options = {
	user = function()
		vim.opt.relativenumber = true
		vim.opt.ruler = true
		vim.g.copilot_no_tab_map = true
	end,
}

M.plugins = {
	options = {
		lspconfig = {
			setup_lspconf = "custom.plugins.configs.lspconfig",
		},
	},

	override = {
		["kyazdani42/nvim-tree.lua"] = override.nvimtree,
		["nvim-treesitter/nvim-treesitter"] = override.treesitter,
		["lukas-reineke/indent-blankline.nvim"] = override.blankline,
	},

	user = require("custom.plugins"),
}

M.mappings = require("custom.core.mappings")

return M
