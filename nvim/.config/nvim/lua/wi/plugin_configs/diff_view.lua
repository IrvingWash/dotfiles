require("diffview").setup()

vim.keymap.set("n", "<leader>dvo", ":DiffviewOpen<CR>", {})
vim.keymap.set("n", "<leader>dvx", ":DiffviewClose<CR>", {})
