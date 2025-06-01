return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require('nvim-tree').setup {
      view = {
        width = 43,
      },
      filters = {
        custom = { '^.git$' },
      },
      -- open with Finder on Mac
      system_open = vim.fn.has 'mac' == 1 and {
        cmd = 'open',
        args = { '-R' },
      } or nil,
      vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<CR>', { desc = '[e]xplore file tree' }),
    }
  end,
}
