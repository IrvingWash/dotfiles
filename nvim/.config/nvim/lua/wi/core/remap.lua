vim.g.mapleader = " "

-- Run command and save output in scratch
vim.keymap.set(
    "n",
    "<leader>c",
    function()
        vim.cmd("Scratch")
        vim.api.nvim_feedkeys(":read! ", "n", false)
    end, { silent = true }
)
