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
          auto_trigger_ft = { '*' },
        },
        provider_options = {
          openai_fim_compatible = {
            api_key = 'TERM',
            name = 'Deepseek',
            end_point = 'http://localhost:11434/v1/completions',
            model = 'qwen2.5-coder'
          },
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
            optional = {
              -- pass any additional parameters you want to send to claude request,
              -- e.g.
              -- stop_sequences = nil,
            },
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
      add_minuet_keymap('<CR>', require('minuet.virtualtext').action.accept)
    end,
  },
}
