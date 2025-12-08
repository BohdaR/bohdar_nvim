-- Set leader key first
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Require the split configurations
require('config.diagnostic')
require('config.options')
require('config.keymaps')
require('config.lazy')

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.haml = {
  install_info = {
    url = "~/my_lab/tree-sitter-haml", -- local path or git repo
    files = {"src/parser.c", "src/scanner.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
  },
  filetype = "haml", -- if filetype does not match the parser name
}
