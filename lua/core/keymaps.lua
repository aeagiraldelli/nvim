-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Default opts
local opts = { noremap = true, silent = true }

vim.keymap.set({ 'n', 'v' }, '<C-s>', '<cmd> w <CR>', { noremap = true, silent = true, desc = 'Save file' })
vim.keymap.set({ 'n', 'v' }, '<leader>bs', '<cmd>x<CR>', { noremap = true, silent = true, desc = 'Save and quit' })
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', { noremap = true, silent = true, desc = 'Save file without auto-formatting' })
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = 'LSP rename' })

-- quit file
vim.keymap.set('n', '<leader>dc', ':bp<bar>sp<bar>bn<bar>bd<CR>', { noremap = true, silent = true, desc = 'Quit current buffer without closing window' })

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
vim.keymap.set('n', '<C-right>', [[<cmd>vertical resize +5<cr>]], { desc = 'Resize window to the right' })
vim.keymap.set('n', '<C-left>', [[<cmd>vertical resize -5<cr>]], { desc = 'Resize window to the left' })
vim.keymap.set('n', '<C-down>', [[<cmd>horizontal resize +2<cr>]], { desc = 'Resize window to the bottom' })
vim.keymap.set('n', '<C-up>', [[<cmd>horizontal resize -2<cr>]], { desc = 'Resize window up' })

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
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to previous diagnostic message' })

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to next diagnostic message' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Move commands
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line up' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line down' })

-- Map Clang command to swithc c/c++ header/source files.
vim.keymap.set('n', '<leader>ch', '<cmd>Ouroboros<cr>', { desc = 'Switch C header/source files' })

-- Small terminal
vim.keymap.set('n', '<space>tt', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 15)
end, { desc = 'Open small terminal' })

-- Toggle background dark/light
vim.keymap.set('n', '<leader>ub', function()
  vim.o.background = vim.o.background == 'dark' and 'light' or 'dark'
end, { desc = 'Toggle background' })
