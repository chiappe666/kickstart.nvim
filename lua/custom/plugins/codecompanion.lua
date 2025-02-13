return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    strategies = {
      -- Change the default chat adapter
      chat = {
        adapter = 'ollama',
        adapters = {
          ['deepseek r1'] = function()
            return require('codecompanion.adapters').extend('ollama', {
              name = 'deepseek r1', -- Give this adapter a different name to differentiate it from the default ollama adapter
              schema = {
                model = {
                  default = 'deepseek-r1:8b',
                },
                num_ctx = {
                  default = 16384,
                },
                num_predict = {
                  default = -1,
                },
              },
            })
          end,
        },
      },
      inline = {
        adapter = 'ollama',
        adapters = {
          ['deepseek-coder'] = function()
            return require('codecompanion.adapters').extend('ollama', {
              name = 'deepseek-coder', -- Give this adapter a different name to differentiate it from the default ollama adapter
              schema = {
                model = {
                  default = 'deepseek-coder:6.7b',
                },
                num_ctx = {
                  default = 16384,
                },
                num_predict = {
                  default = -1,
                },
              },
            })
          end,
        },
      },
    },
  },
  config = true,
}
