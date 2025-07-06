local yazi = require("yazi")

yazi.setup({
    keys = {
        "<leader>nb",
        mode = { "n", "v" },
        "<cmd>Yazi<cr>",
    },
    open_for_directories = true,
})

vim.keymap.set("n", "<leader>nb", "<cmd>Yazi<CR>")
