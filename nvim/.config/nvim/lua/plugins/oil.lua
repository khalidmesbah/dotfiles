return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        delete_to_trash = true,
        view_options = {
          -- Show files and directories that start with "."
          show_hidden = true,
          -- This function defines what will never be shown, even when `show_hidden` is set
          is_always_hidden = function(name, bufnr)
            local always_hidden = { '.git', 'node_modules', '..', '.next' }
            return vim.tbl_contains(always_hidden, name)
          end,
          natural_order = true,
          case_insensitive = false,
          sort = {
            { 'type', 'asc' },
            { 'name', 'asc' },
          },
        },
        keymaps = {
          ['<C-c>'] = false,
          ['<C-h>'] = false,
          ['<C-s>'] = false,
          ['<C-l>'] = false,
          ['q'] = 'actions.close',
        },
      }
    end,
  },
}
