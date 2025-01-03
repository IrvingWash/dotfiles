vim.keymap.set("n", "<leader>nb", ":Neotree toggle<CR>", {})
vim.keymap.set("n", "<leader>nbr", ":Neotree reveal<CR>", {})

require("neo-tree").setup({
    window = {
        width = 30,
    },
    filesystem = {
        filtered_items = {
            visible = true,
        },
    },
})
