vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.api.nvim_set_keymap("i", "jk", "<esc>", { noremap = false })

