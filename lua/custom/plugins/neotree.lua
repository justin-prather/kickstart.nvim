local wk = require 'which-key'
wk.add {
  { '\\\\', '<cmd>Neotree toggle<cr>', desc = 'Show/hide Neotree', mode = 'n' },
}

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },

  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
    }
  end,
}
