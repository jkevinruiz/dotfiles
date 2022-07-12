local M = {}

M.disabled = {
	t = {
		-- disabled with preference to tmux.vim pane resize
		["<A-h>"] = "",
	},
	n = {
		-- disabled with preference to tmux.vim window navigation
		["<C-h>"] = "",
		["<C-j>"] = "",
		["<C-k>"] = "",
		["<C-l>"] = "",
		["<A-h>"] = "",
		["<leader>h"] = "",
	},
}

M.nvterm = {
	-- override nvterm's default mappings to use tmux.vim's resize mappings
	t = {
		["<A-s>"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"   toggle horizontal term",
		},
	},

	n = {
		["<A-s>"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"   toggle horizontal term",
		},

		["<leader>s"] = {
			function()
				require("nvterm.terminal").new("horizontal")
			end,
			"   new horizontal term",
		},
	},
}

M.copilot = {
	i = {
		["<C-h>"] = {
			'copilot#Accept("<Left>")',
			"   Copilot Accept",
			opts = { expr = true },
		},
	},
}

M.refactor = {
	v = {
		["<leader>re"] = {
			"<Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>",
			"  Extract Function",
			opts = { noremap = true, silent = true, expr = false },
		},
		["<leader>rf"] = {
			"<Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>",
			"  Extract Function To File",
			opts = { noremap = true, silent = true, expr = false },
		},
		["<leader>rv"] = {
			"<Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>",
			"  Extract Variable",
			opts = { noremap = true, silent = true, expr = false },
		},
		["<leader>ri"] = {
			"<Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>",
			"  Inline Variable",
			opts = { noremap = true, silent = true, expr = false },
		},
		["<leader>rr"] = {
			":lua require('refactoring').select_refactor()<CR>",
			"  Select Refactor",
			opts = { noremap = true, silent = true, expr = false },
		},
	},

	n = {
		["<leader>rb"] = {
			"<Cmd>lua require('refactoring').refactor('Extract Block')<CR>",
			"  Extract Block",
			opts = { noremap = true, silent = true, expr = false },
		},
		["<leader>rf"] = {
			"<Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>",
			"  Extract Block To File",
			opts = { noremap = true, silent = true, expr = false },
		},
		["<leader>ri"] = {
			"<Cmd>lua require('refactoring').refactor('Inline Variable')<CR>",
			"  Inline Variable",
			opts = { noremap = true, silent = true, expr = false },
		},
	},
}

return M
