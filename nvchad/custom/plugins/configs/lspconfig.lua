local present, lspconfig = pcall(require, "lspconfig")

if not present then
	return
end

local M = {}

M.setup_lsp = function(attach, capabilities)
	-- lsp servers
	local servers = { "bashls", "gopls", "html", "cssls", "emmet_ls" }

	for _, lsp in ipairs(servers) do
		lspconfig[lsp].setup({
			on_attach = attach,
			capabilities = capabilities,
			root_dir = vim.loop.cwd,
		})
	end

	-- temporarily disable tsserver suggestions
	lspconfig.tsserver.setup({
		init_options = {
			preferences = {
				disableSuggestions = true,
			},
		},

		on_attach = function(client, bufnr)
			client.resolved_capabilities.document_formatting = false
			vim.api.nvim_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
		end,
	})
end

return M
