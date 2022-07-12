local present, surround = pcall(require, "nvim-surround")

if not present then
	return
end

local M = {}

M.setup = function()
	surround.setup({
		keymaps = { -- vim-surround style keymaps
			insert = "ys",
			visual = "S",
			delete = "ds",
			change = "cs",
		},
		delimiters = {
			pairs = {
				["("] = { "( ", " )" },
				[")"] = { "(", ")" },
				["{"] = { "{ ", " }" },
				["}"] = { "{", "}" },
				["<"] = { "< ", " >" },
				[">"] = { "<", ">" },
				["["] = { "[ ", " ]" },
				["]"] = { "[", "]" },
			},
			separators = {
				["'"] = { "'", "'" },
				['"'] = { '"', '"' },
				["`"] = { "`", "`" },
			},
			HTML = {
				["t"] = true, -- Use "t" for HTML-style mappings
			},
			aliases = {
				["a"] = ">", -- Single character aliases apply everywhere
				["b"] = ")",
				["B"] = "}",
				["r"] = "]",
				["q"] = { '"', "'", "`" }, -- Table aliases only apply for changes/deletions
			},
		},
	})
end

return M
