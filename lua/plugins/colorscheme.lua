return {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = false } -- Disable italics in comments
      },
      on_highlights = function(highlights, colors)
        local bg = "#16161e"

        colors.bg = bg

        highlights.Normal.bg = bg
        highlights.NormalNC.bg = bg
        highlights.NormalFloat.bg = bg
        highlights.FloatBorder.bg = bg
        highlights.SignColumn.bg = bg
        highlights.NeoTreeNormal.bg = bg
        highlights.NeoTreeNormalNC.bg = bg

        -- Remove background for diagnostic messages
        highlights.DiagnosticVirtualTextHint.bg = "NONE"
        highlights.DiagnosticVirtualTextInfo.bg = "NONE"
        highlights.DiagnosticVirtualTextWarn.bg = "NONE"
        highlights.DiagnosticVirtualTextError.bg = "NONE"
      end
    }

    vim.cmd.colorscheme 'tokyonight-night'
  end
}
