return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'auto',
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = true,
      integrations = {
        aerial = true,
        barbar = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        which_key = true,
      },
    }
    vim.cmd 'colorscheme catppuccin'
  end,
}
