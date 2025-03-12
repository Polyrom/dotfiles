-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', desc = '[E]xplorer tree', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      filtered_items = {
        visible = true,
        show_hidden_count = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          '.git',
          '.DS_Store',
        },
        never_show = {},
      },
    },
    renderer = {
      icons = {
        show = {
          file = false,
          folder = false,
          folder_arrow = true,
          git = true,
        },
      },
    },
  },
}
