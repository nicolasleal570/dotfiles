require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-c>", "<ESC>")

-- Change between tabs mapping
map("n", "<leader>l", ":tabnext<CR>")
map("n", "<leader>h", ":tabnext<CR>")

