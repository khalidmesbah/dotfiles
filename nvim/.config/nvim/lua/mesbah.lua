local M = {}

local function create_float_buffer(content)
  local buf = vim.api.nvim_create_buf(false, true)
  local lines = type(content) == 'string' and { content } or content
  vim.api.nvim_buf_set_lines(buf, 0, -1, true, lines)

  local opts = {
    modifiable = false,
    buftype = 'nofile',
    bufhidden = 'wipe',
  }

  for k, v in pairs(opts) do
    vim.api.nvim_buf_set_option(buf, k, v)
  end

  local width = 65
  local max_height = math.floor(vim.o.lines * 0.8)
  local height = math.min(#lines, max_height)

  vim.api.nvim_buf_set_var(buf, 'float_width', width)
  vim.api.nvim_buf_set_var(buf, 'float_height', height)

  return buf
end

local function display_float_buffer(buf)
  local width = vim.api.nvim_buf_get_var(buf, 'float_width')
  local height = vim.api.nvim_buf_get_var(buf, 'float_height')

  local win_height = vim.o.lines
  local win_width = vim.o.columns
  local row = math.floor((win_height - height) / 2)
  local col = math.floor((win_width - width) / 2)

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

  local win = vim.api.nvim_open_win(buf, true, opts)
  vim.wo[win].wrap = true
  vim.wo[win].scrolloff = 0
  vim.wo[win].sidescrolloff = 0

  -- Set cursor to top of buffer
  vim.api.nvim_win_set_cursor(win, { 1, 0 })

  vim.api.nvim_create_autocmd('BufLeave', {
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
  local handle = assert(io.popen(cmd, 'r'))
  local output = assert(handle:read '*a')
  handle:close()
  return output
end

function M.display_word_under_cursor()
  local word = vim.fn.expand '<cword>'

  if word == '' then
    print 'No word under cursor'
    return
  end

  local translation = osExecute('trans --no-ansi ' .. word)
  local content = vim.split(translation, '\n')

  local buf = create_float_buffer(content)
  display_float_buffer(buf)
end

return M
