local present, refactoring = pcall(require, "refactoring")

if not present then
	return
end

local M = {}

M.setup = function()
	refactoring.setup({
		prompt_func_return_type = {
			go = true,
			java = true,
			cpp = true,
			c = true,
			h = false,
			hpp = false,
			cxx = false,
		},
		prompt_func_param_type = {
			go = true,
			java = true,
			cpp = true,
			c = true,
			h = false,
			hpp = false,
			cxx = false,
		},
		printf_statements = {},
		print_var_statements = {},
	})
end

return M
