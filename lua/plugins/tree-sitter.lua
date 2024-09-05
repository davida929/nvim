return {
	"nvim-treesitter/nvim-treesitter",
	-- {'do': ':TSUpdate'},
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "lua", "c", "vim" },
			auto_install = true,
		})
	end,
}
