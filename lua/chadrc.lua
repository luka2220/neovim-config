---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "poimandres",
}

local telescope = require("telescope")

telescope.setup({
    defaults = {
        file_ignore_patterns = { "node_modules/.*" },
    },
})

return M
