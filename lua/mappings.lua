require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Toggle Diagnostics" })
map("n", "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics" })
map("n", "<leader>v", "<cmd>vsp<cr>", { desc = "Vertical split" })
map("n", "<leader>s", "<cmd>sp<cr>", { desc = "Horizontal split" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit all" })
map("n", "<leader>o", ":Oil<CR>")

map("n", "<C-n>", "<Nop>")
map("n", "<leader>e", "<Nop>")


 

-- Press <leader>f to open Yazi in terminal
vim.api.nvim_set_keymap(
    "n",                      -- normal mode
    "<leader>ge",             -- key combination
    ":GitExplorer<CR>",       -- command to execute
    { noremap = true, silent = true }  -- options
)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Harpoon
map("n", "<leader>a", function() require("harpoon"):list():add() end,          { desc = "Harpoon add file" })
map("n", "<C-e>",     function() local h = require("harpoon"); h.ui:toggle_quick_menu(h:list()) end, { desc = "Harpoon menu" })
map("n", "<leader>1", function() require("harpoon"):list():select(1) end,      { desc = "Harpoon file 1" })
map("n", "<leader>2", function() require("harpoon"):list():select(2) end,      { desc = "Harpoon file 2" })
map("n", "<leader>3", function() require("harpoon"):list():select(3) end,      { desc = "Harpoon file 3" })
map("n", "<leader>4", function() require("harpoon"):list():select(4) end,      { desc = "Harpoon file 4" })
map("n", "<C-S-P>",   function() require("harpoon"):list():prev() end,         { desc = "Harpoon prev" })
map("n", "<C-S-N>",   function() require("harpoon"):list():next() end,         { desc = "Harpoon next" })
