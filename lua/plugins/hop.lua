return{
  'smoka7/hop.nvim',   -- changed from phaazon/hop.nvim
  event = "VeryLazy",
  version = '*',       -- changed from branch = 'v2'
  config = function()
    local hop = require('hop')
    hop.setup({
      keys = 'etovxqpdygfblzhckisuran',
      jump_on_sole_occurrence = true,
      case_insensitive = true,
    })
    vim.keymap.set('n', '<leader>jw', ':HopWord<CR>', { desc = 'Hop to word' })
    vim.keymap.set('n', '<leader>jl', ':HopLine<CR>', { desc = 'Hop to line' })
    vim.keymap.set('n', '<leader>jc', ':HopChar1<CR>', { desc = 'Hop to character' })
    vim.keymap.set('n', '<leader>jp', ':HopPattern<CR>', { desc = 'Hop to pattern' })
  end,
}
