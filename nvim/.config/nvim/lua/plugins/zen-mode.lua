return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      backdrop = 0.95,
      width = 0.7, -- 70% of the editor width for better centering on various screen sizes
      height = 0.9, -- 90% of the editor height for a centered appearance
      options = {
        signcolumn = 'no',
        number = false,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
        foldcolumn = '0',
        list = false,
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 0,
      },
      twilight = { enabled = true },
      gitsigns = { enabled = false },
      tmux = { enabled = false },
      todo = { enabled = false },
      kitty = {
        enabled = false,
        font = '+4',
      },
      alacritty = {
        enabled = false,
        font = '14',
      },
      wezterm = {
        enabled = false,
        font = '+4',
      },
    },
  },
  keys = {
    { '<leader>z', '<cmd>ZenMode<CR>', desc = 'Toggle Zen Mode' },
  },
}
