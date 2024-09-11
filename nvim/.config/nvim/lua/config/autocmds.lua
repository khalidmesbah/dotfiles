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

-- Run a script whenever an mdx file is written (saved)
vim.api.nvim_create_autocmd('BufWritePost', {
  group = 'FileChange',
  pattern = '*.mdx',
  callback = function()
    -- Get the full path of the current file
    local file_path = vim.fn.expand '%:p'

    -- Construct the command to run the script with the file path as an argument
    local command = string.format('silent !python3 /home/khalidmesbah/repos/workflow/scripts/update-date.py "%s"', file_path)

    -- Execute the command
    vim.api.nvim_command(command)
  end,
})
