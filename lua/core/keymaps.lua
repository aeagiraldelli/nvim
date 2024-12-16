-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Default opts
local opts = { noremap = true, silent = true }

vim.keymap.set({ 'n', 'v' }, '<C-s>', '<cmd> w <CR>', { noremap = true, silent = true, desc = 'Save file' })
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', { noremap = true, silent = true, desc = 'Save file without auto-formatting' })

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>bd', ':bdelete!<CR>', { noremap = true, silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<leader>bn', '<cmd> enew <CR>', { noremap = true, silent = true, desc = 'New buffer' })

-- Window management
vim.keymap.set('n', '<leader>wv', '<C-w>v', { noremap = true, silent = true, desc = 'Split [w]indow [v]ertically' })
vim.keymap.set('n', '<leader>wh', '<C-w>s', { noremap = true, silent = true, desc = 'Split [w]indow [h]orizontally' })
vim.keymap.set('n', '<leader>we', '<C-w>=', { noremap = true, silent = true, desc = 'Make split [w]indows [e]qual width and height' })
vim.keymap.set('n', '<leader>wc', ':close<CR>', { noremap = true, silent = true, desc = 'Close current split window' })

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', { noremap = true, silent = true, desc = 'Open new tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { noremap = true, silent = true, desc = 'Close current tab' })
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', { noremap = true, silent = true, desc = 'Go to next tab' })
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', { noremap = true, silent = true, desc = 'Go to previous tab' })

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc = 'Toggle line wrapping' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Move commands
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line down' })

-- Map Clang command to swithc c/c++ header/source files.
vim.keymap.set('n', '<leader>ch', ':ClangdSwitchSourceHeader<cr>', { desc = 'Switch C header/source files' })
