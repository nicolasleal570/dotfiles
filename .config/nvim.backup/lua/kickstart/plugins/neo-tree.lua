-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

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
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
    { '<leader>nt', ':Neotree toggle<CR>', { desc = 'Toggle file explorer' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = false,
      window = {
        position = 'left',
      },
      filesystem = {
        follow_current_file = true,
      },
      event_handlers = {
        -- Auto close when open a file
        {
          event = 'file_opened',
          handler = function()
            require('neo-tree').close_all()
          end,
        },
      },
    }
  end,
}
