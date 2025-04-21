local function configure()
  local theme = require 'alpha.themes.theta'
  local themeconfig = theme.config
  local dashboard = require 'alpha.themes.dashboard'
  local buttons = {
    type = 'group',
    val = {
      { type = 'text', val = 'Quick links', opts = { hl = 'SpecialComment', position = 'center' } },
      { type = 'padding', val = 1 },
      dashboard.button('e', '  new file', '<cmd>ene<CR>'),
      dashboard.button('SPC sf', '  search file'),
      dashboard.button('SPC sg', '  live grep'),
      dashboard.button('SPC e', '󰙅  file explorer'),
      dashboard.button('u', '󱐥  update plugins', '<cmd>Lazy sync<CR>'),
      dashboard.button('q', '󰩈  quit', '<cmd>qa<CR>'),
    },
    position = 'center',
  }
  dashboard.section.header.val = {
    [[                                                    ]],
    [[                                                    ]],
    [[                                                    ]],
    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
    [[                                                    ]],
    [[                                                    ]],
    [[                                                    ]],
  }
  local lazy_stats = require('lazy').stats() -- Get Lazy.nvim stats
  dashboard.section.footer.val = {
    '',
    '',
    '  Plugins loaded: ' .. lazy_stats.loaded .. ' / ' .. lazy_stats.count,
  }
  themeconfig.layout[2] = dashboard.section.header
  themeconfig.layout[6] = buttons
  themeconfig.layout[7] = dashboard.section.footer

  return themeconfig
end

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('alpha').setup(configure())
  end,
}
