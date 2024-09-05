return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettier,

				null_ls.builtins.completion.spell,
			},
		})
		-- keybinding
		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
