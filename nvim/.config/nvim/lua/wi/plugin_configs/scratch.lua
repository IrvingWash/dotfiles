local scratch = require("scratch")

scratch.setup({})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>ss", "<cmd>Scratch<cr>", opts)
map("n", "<leader>ds", "<cmd>ScratchSplit<cr>", opts)
