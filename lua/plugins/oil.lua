return {

  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      keymaps = {
        ["g?"]    = "actions.show_help",
        ["<CR>"]  = "actions.select",
        ["<C-v>"] = "actions.select_vsplit",
        ["<C-s>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["<C-r>"] = "actions.refresh",
        ["-"]     = "actions.parent",
        ["_"]     = "actions.open_cwd",
        ["g."]    = "actions.toggle_hidden",
        ["gs"]    = "actions.change_sort",
        ["gx"]    = "actions.open_external",
        ["`"]     = "actions.cd",
        ["~"]     = "actions.tcd",
      },
    })

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    vim.keymap.set("n", "<leader>-", function() require("oil").toggle_float() end, { desc = "Oil float" })
  end,
}
