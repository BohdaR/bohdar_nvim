return {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = false } -- Disable italics in comments
      }
    }

    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'tokyonight-night'
    -- Override background color for tokyonight theme
    vim.cmd[[highlight Normal guibg=#1c1c1c]]  -- Change the background color to your desired color
  end
}
