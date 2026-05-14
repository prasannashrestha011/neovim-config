-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "decay",
  transparency=true,

	 hl_override = {
  -- Normal mode  (default usually green)
    St_NormalMode = {
      fg = "#000000",
      bg = "#00ff00", -- bright green
      bold = true,
    },

    -- Insert mode (default usually blue)
    St_InsertMode = {
      fg = "#000000",
      bg = "#ff005f", -- hot pink — very alerting!
      bold = true,
    },

    -- Visual mode
    St_VisualMode = {
      fg = "#000000",
      bg = "#ff8800", -- bright orange
      bold = true,
    },
	 },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
