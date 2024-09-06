-- basic indentation
vim.cmd("set number")
vim.cmd("set rnu")
vim.cmd("set scrolloff=16")
vim.cmd("set smartindent")
vim.cmd("set smarttab")

-- tabulation
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")

-- basic keymap
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("n", "<C-z>", ":u<CR>", {})
vim.keymap.set("n", "<C-q>", ":qa!<CR>", {})

-- vim mapleader
vim.g.mapleader = " "

-- configure shell
-- vim.o.shell = "bash.exe"
-- vim.o.shell = "powershell"
