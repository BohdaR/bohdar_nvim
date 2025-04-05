return {
  -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside text objects
    require('mini.ai').setup()

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    require('mini.surround').setup()

    --  Check out: https://github.com/echasnovski/mini.nvim
  end
}

