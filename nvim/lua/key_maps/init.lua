-- Configuration
local options = { noremap = true, silent = true };

local modes = {
	normal = 'n',
	insert = 'i',
	visual = 'v',
	visual_block = 'x',
	terminal = 't',
	command = 'c',
}

local map = vim.api.nvim_set_keymap;
local setmap = vim.keymap.set;

-- Remap leader
map('', '<Space>', '<Nop>', options);
vim.g.mapleader = ' ';
vim.g.maplocalleader = ' ';

-- Pane navigation
map(modes.normal, '<C-h>', '<C-w>h', options);
map(modes.normal, '<C-j>', '<C-w>j', options);
map(modes.normal, '<C-k>', '<C-w>k', options);
map(modes.normal, '<C-l>', '<C-w>l', options);

-- Resize
map(modes.normal, '<A-Up>', ':resize +2<CR>', options);
map(modes.normal, '<A-Down>', ':resize -2<CR>', options);
map(modes.normal, '<A-Left>', ':vertical resize -2<CR>', options);
map(modes.normal, '<A-Right>', ':vertical resize +2<CR>', options);

-- Stay in indent mode
map(modes.visual, '<', '<gv', options);
map(modes.visual, '>', '>gv', options);

-- Line sorting
map(modes.visual, '<A-j>', ':m .+1<CR>==', options);
map(modes.visual, '<A-k>', ':m .-2<CR>==', options);
map(modes.visual, 'p', '"_dP', options);
map(modes.visual_block, 'J', ':move \'>+1<CR>gv-gv', options);
map(modes.visual_block, 'K', ':move \'<-2<CR>gv-gv', options);
map(modes.visual_block, '<A-j>', ':move \'>+1<CR>gv-gv', options);
map(modes.visual_block, '<A-k>', ':move \'<-2<CR>gv-gv', options);

-- Telescope
map(modes.normal, '<Leader>ff', '<Cmd>Telescope find_files<CR>', options);
map(modes.normal, '<Leader>fg', '<Cmd>Telescope live_grep<CR>', options);
map(modes.normal, '<Leader>gt', '<Cmd>Telescope git_status<CR>', options);
map(modes.normal, '<Leader>gb', '<Cmd>Telescope git_branches<CR>', options);

-- Neotree
map(modes.normal, '<Tab>', '<Cmd>Neotree toggle<CR>', options);
map(modes.normal, '<Leader>f', '<Cmd>Neotree focus<CR>', options);

-- Gitsigns
map(modes.normal, '<Leader>gs', ':Gitsigns stage_hunk<CR>', options);
map(modes.normal, '<Leader>gu', ':Gitsigns undo_stage_hunk<CR>', options);
map(modes.normal, '<leader>gd', ':Gitsigns diffthis<CR>', options);
map(modes.normal, '<Leader>gl', ':Gitsigns blame_line<CR>', options);

-- Bufferline
map(modes.normal, '<S-l>', '<Cmd>BufferLineCycleNext<CR>', options);
map(modes.normal, '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', options);

-- Bufdelete
map(modes.normal, '<Leader>c', '<Cmd>Bdelete<CR>', options);

-- Comment
-- gcc - toggle comment

-- LSP
setmap(modes.normal, '<Leader>e', vim.diagnostic.open_float, options);
setmap(modes.normal, '[d', vim.diagnostic.goto_prev, options);
setmap(modes.normal, ']d', vim.diagnostic.goto_next, options);
setmap(modes.normal, '<Leader>q', vim.diagnostic.setloclist, options);

-- ToggleTerm
map(modes.normal, '<F7>', "<Cmd>ToggleTerm<CR>", options);
map(modes.terminal, '<F7>', "<Cmd>ToggleTerm<CR>", options);
