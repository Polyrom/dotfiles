-- TODO: read up on mini
return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()
    --
    -- file navigation
    require('mini.files').setup(
      { windows = {
        preview = true,
        width_preview = 60,
      } },
      vim.keymap.set('n', '<leader>e', require('mini.files').open, { desc = '[e]xplore files' })
    )
    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
  end,
}
