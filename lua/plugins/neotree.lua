return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
	config = function() 
		-- configuring keymap
		vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<leader>b", ":Neotree focus<CR>", {})
	end
}
