-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ by kmsf]]
vim.cmd [[
  augroup mdxFileType
    autocmd!
    autocmd BufNewFile,BufRead *.mdx set filetype=markdown
  augroup END
]]

-- vim.filetype.add {
--   extension = {
--     mdx = 'markdown',
--   },
-- }
--

-- update date of md files frontmatter

-- Define an autocommand group
vim.api.nvim_create_augroup('FileChange', { clear = true })

-- Update the last modified date of the mdx file
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.mdx',
  command = 'silent !python ~/repos/workflow/scripts/update-date.py %',
})
