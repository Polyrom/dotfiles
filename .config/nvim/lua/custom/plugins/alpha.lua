return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'
    -- dashboard.file_icons.provider = 'devicons'
    dashboard.section.header.val = {
      [[                                 ]],
      [[▗▖  ▗▖▗▄▄▄▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖▗▖  ▗▖]],
      [[▐▛▚▖▐▌▐▌   ▐▌ ▐▌▐▌  ▐▌  █  ▐▛▚▞▜▌]],
      [[▐▌ ▝▜▌▐▛▀▀▘▐▌ ▐▌▐▌  ▐▌  █  ▐▌  ▐▌]],
      [[▐▌  ▐▌▐▙▄▄▖▝▚▄▞▘ ▝▚▞▘ ▗▄█▄▖▐▌  ▐▌]],
      [[                                 ]],
      [[                                 ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find file', require('telescope.builtin').find_files),
      dashboard.button('g', '󰨼  Find word', require('telescope.builtin').live_grep),
      dashboard.button('r', '󰼨  Recent files', require('telescope.builtin').oldfiles),
      dashboard.button('n', '󰙅  Neotree', ':Neotree toggle<CR>'),
      dashboard.button('l', '  Lazy', ':Lazy <CR>'),
      dashboard.button('c', '  Config', function()
        require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
      end),
      dashboard.button('q', '󰩈  Quit NVIM', ':qa<CR>'),
    }
    local handle = io.popen 'fortune'
    local fortune = handle:read '*a'
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]
    require('alpha').setup(dashboard.config)
  end,
}
