return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      [[                                                                                                   ]],
      [[ /\\\\\_____/\\\_______________________________/\\\________/\\\___________________________         ]],
      [[ \/\\\\\\___\/\\\______________________________\/\\\_______\/\\\__________________________         ]],
      [[ _\/\\\/\\\__\/\\\______________________________\//\\\______/\\\___/\\\_____________________       ]],
      [[  _\/\\\//\\\_\/\\\_____/\\\\\\\\______/\\\\\_____\//\\\____/\\\___\///_____/\\\\\__/\\\\\__       ]],
      [[   _\/\\\\//\\\\/\\\___/\\\/////\\\___/\\\///\\\____\//\\\__/\\\_____/\\\__/\\\///\\\\\///\\\_     ]],
      [[    _\/\\\_\//\\\/\\\__/\\\\\\\\\\\___/\\\__\//\\\____\//\\\/\\\_____\/\\\_\/\\\_\//\\\__\/\\\     ]],
      [[     _\/\\\__\//\\\\\\_\//\\///////___\//\\\__/\\\______\//\\\\\______\/\\\_\/\\\__\/\\\__\/\\\_   ]],
      [[      _\/\\\___\//\\\\\__\//\\\\\\\\\\__\///\\\\\/________\//\\\_______\/\\\_\/\\\__\/\\\__\/\\\   ]],
      [[       _\///_____\/////____\//////////_____\/////___________\///________\///__\///___\///___\///__ ]],
      [[                                                                                                   ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', '🗂️ New file', ':ene <BAR> startinsert <CR>'),
      -- dashboard functionality work in progress
      dashboard.button('s f', '🔍 Search file', '<Space>sf <CR>'),
      dashboard.button('s g', '🔭 Search grep', '<Space>sg <CR>'),
      dashboard.button('Ctrl f', 'Open Filetree', '<C-f> <CR>'),
      dashboard.button('q', '🚪 Quit NVIM', ':qa<CR>'),
    }
    local handle = io.popen 'fortune'
    local fortune = handle:read '*a'
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end,
}
