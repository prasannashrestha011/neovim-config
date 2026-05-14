return{
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({})

    vim.keymap.set("n", "<leader>ff", "<CMD>FzfLua files<CR>",      { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", "<CMD>FzfLua live_grep<CR>",  { desc = "Search text" })
    vim.keymap.set("n", "<leader>fb", "<CMD>FzfLua buffers<CR>",    { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>fh", "<CMD>FzfLua help_tags<CR>",  { desc = "Help tags" })
  end,
}
