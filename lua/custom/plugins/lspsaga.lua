local wk = require 'which-key'
wk.add {
  { '<leader>pd', '<cmd>Lspsaga peek_definition<cr>', desc = 'Peek Definition' },
  { '<leader>pt', '<cmd>Lspsaga peek_type_definition<cr>', desc = 'Peek Type Definition' },
}

return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {}
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
