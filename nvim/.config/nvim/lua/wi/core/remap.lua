vim.g.mapleader = " "

vim.keymap.set("n", "<leader>c", function()
    require("wi.core.compile").compile()
end, { desc = "Compile" })
