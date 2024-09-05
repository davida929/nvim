return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"html",
					"tsserver",
					"clangd",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require("mason").setup()

			-- configuring lsp-config
			local lspconfig = require("lspconfig")

			-- keymap bindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

			-- configuring server
			lspconfig.lua_ls.setup({
				capabilities = cabalities,
			})
			-- configuring server
			lspconfig.tsserver.setup({
				capabilities = cabalities,
			})
			-- configuring server
			lspconfig.html.setup({
				capabilities = cabalities,
			})
			-- configuring server
			lspconfig.dockerls.setup({
				capabilities = cabalities,
			})
			-- configuring server
			lspconfig.clangd.setup({
				capabilities = cabalities,
			})
		end,
	},
}
