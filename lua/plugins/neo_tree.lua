return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>re', ':Neotree filesystem right<CR>', desc = '[R]eveal NeoTree filesystem [E]xplorer', silent = true },
    { '<leader>rg', ':Neotree git_status float<CR>', desc = '[R]eveal [G]it status float', silent = true },
    -- Use those when the NeoTree windown is out of focus.
    { '<leader>he', ':Neotree filesystem close<CR>', desc = '[H]ide NeoTree filesystem [E]xplorer', silent = true },
    { '<leader>hg', ':Neotree git_status close<CR>', desc = '[H]ide [G]it status NeoTree', silent = true },
  },
}
