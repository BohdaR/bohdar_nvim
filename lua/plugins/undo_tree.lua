return {
  'mbbill/undotree',
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_DiffAutoOpen = 0
    vim.g.undotree_SetFocusWhenToggle= 1

    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle [U]ndotree" })
  end
}
