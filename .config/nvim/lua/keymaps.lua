-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Save buffer
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = '[W]rite buffer' })

-- Delete buffer
vim.keymap.set('n', '<leader>bd', vim.cmd.bd, { desc = '[B]uffer [d]elete' })

-- Split window
vim.keymap.set('n', 'ss', ':split<Return>', { desc = 'Split horizontally' })
vim.keymap.set('n', 'vs', ':vsplit<Return>', { desc = 'Split vertically' })

-- Increment, decrement
vim.keymap.set('n', '+', '<C-a>', { desc = 'Increment' })
vim.keymap.set('n', '-', '<C-x>', { desc = 'Decrement' })

-- Code line diagnostic
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Line [C]ode [D]iagnostics' })

-- Disable yank on x
vim.keymap.set({ 'v', 'n' }, 'x', '"_x')
