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

--
vim.api.nvim_create_augroup('FileChange', { clear = true })

-- Update date of md files in frontmatter
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.mdx',
  callback = function()
    local filepath = vim.fn.expand '%:p'

    if not string.match(filepath, '/blog%-posts/') then
      return
    end

    local handle = io.popen('git diff --quiet ' .. filepath .. '; echo $?')
    local result = handle:read '*a'
    handle:close()

    if tonumber(result) ~= 0 then
      vim.cmd('silent !python ~/repos/workflow/scripts/update-date.py ' .. filepath)
    end
  end,
})

-- Auto capitalize the first alphabetic character of every line in md
-- files
vim.api.nvim_create_autocmd('InsertCharPre', {
  pattern = '*.md*',
  callback = function()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0)) -- cursor pos
    local line = vim.api.nvim_get_current_line()

    -- Only proceed if inserting an alphabetic character
    local char = vim.v.char
    if not char:match '%a' then
      return
    end

    -- Get the text before the cursor
    local before_cursor = line:sub(1, col)

    -- Check if there's already an alphabetic character before cursor
    if before_cursor:match '%a' then
      -- There is already an alphabetic char before cursor; do nothing
      return
    end

    -- If no alphabetic char before cursor, capitalize current char
    vim.v.char = char:upper()
  end,
})
