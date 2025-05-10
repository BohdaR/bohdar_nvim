vim.keymap.set("n", "<leader>;", ':b#<CR>', { desc = "Go to last used buffer", silent = true })
vim.keymap.set("n", "<leader>j", ':bp<CR>', { desc = "Go to previous buffer", silent = true })
vim.keymap.set("n", "<leader>k", ':bn<CR>', { desc = "Go to next buffer", silent = true })
vim.keymap.set("n", "<leader>d", ':bd<CR>', { desc = "Destroy the current buffer", silent = true })

vim.keymap.set("n", "<C-S>", ':w<CR>', { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>rc", ':&&<CR>', { desc = "Repeat command", silent = true })
