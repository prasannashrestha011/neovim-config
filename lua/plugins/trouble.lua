return{
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("trouble").setup({
      focus = true,
      auto_close = false,
      auto_jump = false,
    })
    
    vim.keymap.set("n", "<leader>ll", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
    vim.keymap.set("n", "<leader>lw", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Workspace Diagnostics (Trouble)" })
    vim.keymap.set("n", "<leader>ld", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
    vim.keymap.set("n", "<leader>lx", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
    vim.keymap.set("n", "<leader>lq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
  end,
}
