local builtin = require("telescope.builtin")

vim.keymap.set(
    "n",
    "<leader>ff",
    builtin.git_files,
    { desc = "Telescope find git files" }
)
vim.keymap.set(
    "n",
    "<leader>faf",
    builtin.find_files,
    { desc = "Telescope find files" }
)
vim.keymap.set(
    "n",
    "<leader>fg",
    builtin.live_grep,
    { desc = "Telescope live grep" }
)
vim.keymap.set(
    "n",
    "<leader>fb",
    builtin.buffers,
    { desc = "Telescope buffers" }
)
