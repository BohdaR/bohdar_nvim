-- Set leader key first
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Require the split configurations
require('config.options')
require('config.keymaps')
require('config.lazy')
