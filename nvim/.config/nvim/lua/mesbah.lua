local M = {}

local function create_float_window(content)
  -- Create a new buffer for the floating window
  local buf = vim.api.nvim_create_buf(false, true)

  -- Ensure content is a table of strings
  local lines = type(content) == 'string' and { content } or content

  -- Set the buffer's content
  vim.api.nvim_buf_set_lines(buf, 0, -1, true, lines)

  -- Calculate dimensions and position
  local width = 61
  local height = math.min(#lines, 20) -- Limit height to 20 lines
  local win_height = vim.api.nvim_get_option 'lines'
  local win_width = vim.api.nvim_get_option 'columns'
  local row = math.floor((win_height - height) / 3)
  local col = math.floor((win_width - width) / 3)

  -- Set up floating window options
  local opts = {
    style = 'minimal',
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    border = 'rounded',
    focusable = true,
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, opts)

  -- Enable word wrap
  vim.api.nvim_win_set_option(win, 'wrap', true)

  -- Set buffer options
  vim.api.nvim_buf_set_option(buf, 'modifiable', false)
  vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')

  -- Set up keymaps for the floating window
  local function set_keymap(mode, lhs, rhs)
    vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, { noremap = true, silent = true })
  end

  set_keymap('n', 'q', ':close<CR>')
  set_keymap('n', '<Esc>', ':close<CR>')
  set_keymap('n', 'j', 'j')
  set_keymap('n', 'k', 'k')
  set_keymap('n', '<C-d>', '<C-d>')
  set_keymap('n', '<C-u>', '<C-u>')
  set_keymap('n', '<C-f>', '<C-f>')
  set_keymap('n', '<C-b>', '<C-b>')
  set_keymap('n', 'G', 'G')
  set_keymap('n', 'gg', 'gg')

  -- Set up autocommand to close the window when cursor moves outside
  vim.api.nvim_create_autocmd({ 'BufLeave' }, {
    buffer = buf,
    callback = function()
      if vim.api.nvim_win_is_valid(win) then
        vim.api.nvim_win_close(win, true)
      end
    end,
    once = true,
  })
end
local function osExecute(cmd)
  local fileHandle = assert(io.popen(cmd, 'r'))
  local commandOutput = assert(fileHandle:read '*a')
  fileHandle:close()
  return commandOutput
end

M.display_word_under_cursor = function()
  local word = vim.fn.expand '<cword>'

  if word == '' then
    print 'No word under cursor'
    return
  end

  local translation = osExecute('trans --no-ansi ' .. word)

  -- Split the translation into lines
  local content = {}
  for line in translation:gmatch '[^\r\n]+' do
    table.insert(content, line)
  end
  print('Number of lines in translation: ' .. #content)

  create_float_window(content)
end

return M
