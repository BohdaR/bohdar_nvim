-- Set leader key first
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Require the split configurations
require("config.diagnostic")
require("config.options")
require("config.keymaps")
require("config.lazy")

-- Enable treesitter highlighting.
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "bash",
    "css",
    "haml",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "python",
    "ruby",
    "scss",
    "sql",
    "typescript",
    "vue",
    "xml",
    "yaml",
  },

  callback = function()
    vim.treesitter.start()
  end,
})
