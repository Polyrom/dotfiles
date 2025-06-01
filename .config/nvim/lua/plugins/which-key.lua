return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    preset = 'modern',
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.opt.timeoutlen
    delay = 0,
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },
    win = { title = false },
    -- Document existing key chains
    spec = {
      { '<leader>c', group = '[c]ode', mode = { 'n', 'x' }, icon = { icon = '󰅩', color = 'green' } },
      { '<leader>d', group = '[d]ebug', icon = { icon = '', color = 'green' } },
      { '<leader>r', group = '[r]ename', icon = { icon = '󰑕', color = 'green' } },
      { '<leader>s', group = '[s]earch', icon = { icon = '', color = 'green' } },
      { '<leader>u', group = '[u]ser interface', icon = { icon = '', color = 'green' } },
      { '<leader>q', group = '[q]uit', icon = { icon = '󰩈', color = 'green' } },
      { '<leader>t', group = '[t]est', icon = { icon = '󰙨', color = 'green' } },
      { '<leader>g', group = '[g]it', mode = { 'n', 'v' }, icon = { icon = '', color = 'green' } },
      { '<leader>b', group = '[b]uffer', icon = { icon = '', color = 'green' } },
    },
  },
}
