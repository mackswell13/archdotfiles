return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = true,
			sources = {
                null_ls.builtins.formatting.erb_format,
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "yaml" }, -- Apply to JS/TS files
				}),
			},
		})

		vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
	end,
}
