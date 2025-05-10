return {
  {
    'milanglacier/minuet-ai.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('minuet').setup {
        provider = 'gemini',
        n_completions = 1,
        debounce_ms = 150,
        virtualtext = {
          show_on_completion_menu = true,
          auto_trigger_ft = { 'lua', 'ruby', 'css', 'haml', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'python', 'gitcommit', 'yaml' },
        },
        provider_options = {
          openai = {
            model = 'gpt-4o-mini',
            stream = true,
            api_key = 'OPENAI_API_KEY',
            optional = {},
          },
          gemini = {
            model = 'gemini-2.0-flash',
            stream = true,
            api_key = 'GEMINI_API_KEY',
            optional = {
              generationConfig = {
                maxOutputTokens = 128,
                temperature = 0.2,
                top_p = 0.9,
                top_k = 40,
              },
            },
          },
          claude = {
            max_tokens = 256,
            model = 'claude-3-5-haiku-20241022',
            stream = true,
            api_key = 'ANTHROPIC_API_KEY',
            optional = {},
          },
        }
      }
      -- Function to custom minuet keymaps to work only when the virtualtext is visible.
      local add_minuet_keymap = function(key, command)
        vim.keymap.set('i', key, function()
          local minuet = require('minuet.virtualtext').action
          if minuet.is_visible() then
            command()
          else
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), 'n', false)
          end
        end, { silent = true, noremap = true })
      end
      -- Add a keymap to accept one line.
      add_minuet_keymap('<Tab>', require('minuet.virtualtext').action.accept_line)
      -- Add a keymap to accept the whole completion.
      add_minuet_keymap('<A-j>', require('minuet.virtualtext').action.accept)
    end,
  },
}
