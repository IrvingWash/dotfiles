require("gitsigns").setup({
    current_line_blame = true,
    current_line_blame_opts = {
        delay = 300,
    },
})

vim.keymap.set("n", "gn", "<cmd>Gitsigns next_hunk<CR>")
vim.keymap.set("n", "gp", "<cmd>Gitsigns prev_hunk<CR>")
