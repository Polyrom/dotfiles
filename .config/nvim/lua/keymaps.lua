-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'diagnostic [q]uickfix list' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'focus left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'focus right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'focus lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'focus upper window' })

-- Save buffer
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = '[w]rite buffer' })

-- Delete buffer
vim.keymap.set('n', '<leader>bd', vim.cmd.bd, { desc = '[b]uffer [d]elete' })

-- Split window
vim.keymap.set('n', 'ss', ':split<Return>', { desc = 'split horizontally' })
vim.keymap.set('n', 'vs', ':vsplit<Return>', { desc = 'split vertically' })

-- Increment, decrement
vim.keymap.set('n', '+', '<C-a>', { desc = 'increment' })
vim.keymap.set('n', '-', '<C-x>', { desc = 'decrement' })

-- Code line diagnostic
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'line [c]ode [d]iagnostics' })

-- Disable yank on x
vim.keymap.set({ 'v', 'n' }, 'x', '"_x')
