return {
    'neovim/nvim-lspconfig', -- Plugin LSP principal
    config = function()
      local lspconfig = require('lspconfig')
  
      lspconfig.volar.setup {
        filetypes = { "vue" },
        settings = {
          volar = {
            languageFeatures = {
              references = true,
              definition = true,
              typeDefinition = true,
              hover = true,
              rename = true,
            },
            completion = {
              enable = true
            },
            diagnostic = {
              enable = true
            },
          },
        },
      }
  
      lspconfig.intelephense.setup {
        settings = {
          intelephense = {
            environment = {
              phpVersion = '7.4'
            },
            files = {
              maxSize = 5000000
            },
          },
        },
      }
    end,
  }
  