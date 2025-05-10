return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({ map_cr = false })
    vim.api.nvim_set_keymap(
      'i',
      '<C-j>',
      "v:lua.require'nvim-autopairs'.completion_confirm()",
      { expr = true, noremap = true }
    )
  end,
}
