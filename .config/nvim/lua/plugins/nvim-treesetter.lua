return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'windwp/nvim-ts-autotag' },
    },
    build = ':TSUpdate',
    opts = {
      context_commentstring = {
        config = {
          javascript = {
            __default = '// %s',
            jsx_element = '{/* %s */}',
            jsx_fragment = '{/* %s */}',
            jsx_attribute = '// %s',
            comment = '// %s',
          },
          typescript = {
            __default = '// %s',
            tsx_element = '{/* %s */}',
            tsx_fragment = '{/* %s */}',
            tsx_attribute = '// %s',
            comment = '// %s',
            __multiline = '/* %s */',
          },
        },
      },
      ensure_installed = {
        'bash',
        'c',
        'html',
        'lua',
        'markdown',
        'markdown_inline',
        'vim',
        'vimdoc',
        'gitignore',
        'dockerfile',
        'javascript',
        'typescript',
        'css',
        'json',
        'cpp',
        'python',
        'tsx',
        'yaml',
      },
      -- Autoinstall languages that are not installed
      auto_install = true,
      -- highlight = { enable = true },
      -- indent = { enable = true },
      -- autotag = { enable = true },
      -- autopairs = { enable = true },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)

      -- There are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. You should go explore a few and see what interests you:
      --
      --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
}
