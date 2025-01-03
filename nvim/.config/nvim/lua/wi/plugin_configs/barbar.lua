vim.g.barbar_auto_setup = false

require'barbar'.setup {
    clickable = true,
    icons = {
        button = false,
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
          [vim.diagnostic.severity.WARN] = {enabled = false},
          [vim.diagnostic.severity.INFO] = {enabled = false},
          [vim.diagnostic.severity.HINT] = {enabled = true},
        },
        gitsigns = {
          added = {enabled = true, icon = '+'},
          changed = {enabled = true, icon = '~'},
          deleted = {enabled = true, icon = '-'},
        },
        filetype = {
          enabled = true,
        },
        separator = {left = '▎', right = ''},
        separator_at_end = true,
        modified = {button = '●'},
        pinned = {button = '', filename = true},
    },
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Goto buffer in position...
map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)

-- Close buffer
map('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)
