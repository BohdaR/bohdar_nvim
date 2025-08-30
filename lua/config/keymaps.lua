vim.keymap.set("n", "<leader>;", ':b#<CR>', { desc = "Go to last used buffer", silent = true })
vim.keymap.set("n", "<leader>j", ':bp<CR>', { desc = "Go to previous buffer", silent = true })
vim.keymap.set("n", "<leader>k", ':bn<CR>', { desc = "Go to next buffer", silent = true })
vim.keymap.set("n", "<leader>d", ':bd<CR>', { desc = "Destroy the current buffer", silent = true })

vim.keymap.set("n", "<C-S>", ':w<CR>', { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>rc", ':&&<CR>', { desc = "Repeat command", silent = true })
vim.keymap.set("n", "<leader>gb", ':G blame<CR>', { desc = "Show [g]it [b]lame", silent = true })
vim.keymap.set("n", "<leader>tn", function() vim.opt.relativenumber = not vim.opt.relativenumber:get() end, { desc = "[T]oggle relative line [n]umbers" })
