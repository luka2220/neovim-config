require "nvchad.mappings"

-- Custom Mappings

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- open error diagnostics
map("n", "<leader>e", function ()
  vim.diagnostic.open_float()
end, { desc = "Open error diagnostics" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
