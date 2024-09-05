return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-\>]], -- Par exemple, Ctrl+\
			direction = "float", -- Ou 'horizontal' pour un split horizontal
			float_opts = {
				border = "curved", -- Personnalisation de la bordure
			},
		})
		-- keybindings
		-- local opts = { buffer = 0 }
		-- vim.keymap.set("t", "<esc>", [[<C-\><C-n>:q<CR>]], opts)
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>:q<CR>]], {})
		vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", {})
	end,
}
