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
      dashboard.button('e', '新檔案New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('s f', '搜尋檔案Search File', '<Space>sf <CR>'),
      dashboard.button('s g', '望遠鏡Search Grep', '<Space>sg <CR>'),
      dashboard.button('Ctrl f', '打開⽊Open Filetree', '<C-f> <CR>'),
      dashboard.button('q', '離開Quit NeoVim', ':qa<CR>'),
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
