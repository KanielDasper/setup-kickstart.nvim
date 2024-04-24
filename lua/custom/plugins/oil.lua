return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      opts = {
        default_file_explorer = true,
        show_hidden = true,
        columns = {
          'icon',
          'permissions',
          'size',
          -- "mtime",
        },
        view_options = {
          -- Show files and directories that start with "."
          show_hidden = true,
          -- This function defines what is considered a "hidden" file
          -- This function defines what will never be shown, even when `show_hidden` is set
          -- so you may want to set to false if you work with large directories.
          natural_order = true,
          sort = {
            -- sort order can be "asc" or "desc"
            -- see :help oil-columns to see which columns are sortable
            { 'type', 'asc' },
            { 'name', 'asc' },
          },
        },
      },
    }
  end,
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
