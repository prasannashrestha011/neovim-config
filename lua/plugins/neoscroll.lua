return{
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  config = function()
    require('neoscroll').setup({
      mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                  '<C-y>', 'zt', 'zz', 'zb'},
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      easing_function = "sine",
      pre_hook = nil,
      post_hook = nil,
    })
  end
}
