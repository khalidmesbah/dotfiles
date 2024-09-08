-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('i', 'jj', '<Esc>')
map('n', '<C-i>', '<cmd>tab term lua ~/lab/1.lua<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
map('n', '<leader>t', ':terminal<CR>', { desc = 'Open terminal' })

--
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Resize window using <ctrl> arrow keys
map('n', '<M-k>', '<cmd>resize +15<cr>', { desc = 'Increase window height' })
map('n', '<M-j>', '<cmd>resize -15<cr>', { desc = 'Decrease window height' })
map('n', '<M-h>', '<cmd>vertical resize +15<cr>', { desc = 'Decrease window width' })
map('n', '<M-l>', '<cmd>vertical resize -15<cr>', { desc = 'Increase window width' })

-- Split window
map('n', 'ss', ':split<Return>', { desc = 'Split vertically' })
map('n', 'sv', ':vsplit<Return>', { desc = 'Split horizontally' })

-- Tabs
map('n', 'te', ':tabedit<Return>')
map('n', '<s-l>', ':tabnext<Return>')
map('n', '<s-h>', ':tabprev<Return>')
map('n', 'tw', ':tabclose<Return>')

-- By khalidmesbah

map('n', '=', '<C-a>', { desc = 'increment' })
map('n', '<C-a>', 'ggVG', { desc = 'Select all' })
map('n', '-', '<C-x>', { desc = 'decrement' })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected text up' })
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected text down' })
map('n', 'n', 'nzzzv', { desc = 'Go to the next selection and keep it in the middle' })
map('n', 'N', 'Nzzzv', { desc = 'Go to the previous selection and keep it in the middle' })
map({ 'v', 'n', 'i' }, '<F1>', ':RunCode<CR>', { desc = 'Run code' })
map({ 'v', 'n', 'i' }, '<F2>', ':RunClose<CR>', { desc = 'Close code' })
map('n', 'J', 'mzJ`z', { desc = 'Preserver the place of the curosr when moving the below line up' })
map('n', '<C-d>', '<C-d>zz', { desc = 'Move down and keep the cursor in the middle' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Move up and keep the cursor in the middle' })
map('i', '<M-BS>', '<C-W>', { desc = 'Delete a word backwards' })
map('x', 'p', [["_dP]], { desc = 'Paste over without losing the current buffer to the new text that will be removed' })
map('n', '<C-w>', ':wq<CR>', { desc = 'Close and save the file' })
map('n', '<C-q>', ':q!<CR>', { desc = 'Close a file without saving' })
map('n', '<C-s>', ':w<CR>', { desc = 'Save a file' })

-- file navigation
-- map('n', '<leader>f', ':Neotree toggle position=float<CR>', { desc = 'Navigate file system' })
-- map('n', '<leader>ef', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' }) -- toggle file explorer
-- map('n', '<leader>f', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer on current file' }) -- toggle file explorer on current file
-- map('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' }) -- collapse file explorer
-- map('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' }) -- refresh file explorer
-- map('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
map('n', '<leader>f', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- -- competiTest
-- map('n', '\\', ':CompetiTest show_ui<CR>', { desc = 'Open terminal' })
-- map('n', '<F3>', ':CompetiTest add_testcase<CR>', { desc = 'Open terminal' })
-- map('n', '<F4>', ':CompetiTest edit_testcase<CR>', { desc = 'Open terminal' })
-- map('n', '<F5>', ':CompetiTest run<CR>', { desc = 'Open terminal' })
--

-- hob.nvim
map('n', 'f', '<CMD>HopWord<CR>', { desc = 'Open parent directory' })

-- moving
map('n', 'j', 'gj', { desc = 'move down' })
map('n', 'k', 'gk', { desc = 'move up' })

-- gitsigns
map('n', '<leader>gs', ':gitsigns stage_hunk<cr>', { desc = 'stage hunk' })
map('n', '<leader>gu', ':gitsigns undo_stage_hunk<cr>', { desc = 'undo stage hunk' })
map('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
map('n', '<leader>gd', ':Gitsigns diffthis<CR>', { desc = 'Diff this file' })
map('n', '<leader>gb', ':Gitsigns blame_line<CR>', { desc = 'Blame line' })
map('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' })
map('n', '<leader>gh', ':Gitsigns reset_buffer<CR>', { desc = 'Reset buffer' })
map('n', '<leader>gH', ':Gitsigns reset_buffer_index<CR>', { desc = 'Reset buffer index' })
map('n', '<leader>gj', ':Gitsigns next_hunk<CR>', { desc = 'Next hunk' })
map('n', '<leader>gk', ':Gitsigns prev_hunk<CR>', { desc = 'Prev hunk' })

-- lazygit
map('n', '<leader>lg', ':LazyGit<CR>', { desc = 'Open lazygit' })

-- dap
map('n', '<leader>db', ':DapToggleBreakpoint<CR>', { desc = 'Toggle breakpoint' })
map('n', '<leader>dc', ':DapContinue<CR>', { desc = 'Start or continue debugging' })
