---@type ChadrcConfig
local M = {}

-- Dark: poimandres, seoul256_dark, gruvchad
-- Light: seoul256_light
M.base46 = {
  theme = "gruvchad",
  -- transparency = true,
}

local telescope = require "telescope"

telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules/.*" },
  },
}

return M
