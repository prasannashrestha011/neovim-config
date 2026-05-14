
  return {
 "prasannashrestha011/git-explorer.nvim",
    config = function()
        -- optional: define a keymap to toggle it
        vim.keymap.set("n", "<leader>ge", "", {
            noremap = true,
            silent = true,
            callback = function()
                require("git_explorer").open()
            end,
        })
    end,
  }
