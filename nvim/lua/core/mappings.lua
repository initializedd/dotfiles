-----------------------------------------------------------
-- Key Maps
-----------------------------------------------------------
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('n', '<leader>q', ':q!<CR>', { desc = 'Force quit' }) -- Quit
map('n', '<leader>Q', ':qa!<CR>', { desc = 'Force quit all' }) -- Force quit all
map('n', '<leader>s', ':w<CR>', { desc = 'Save file' }) -- Save file

map('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move line down' }) -- Move line down
map("n", '<C-k>', ':m .-2<CR>==', { desc = 'Move line up' }) -- Move line up

map('v', 'y', '"+y', { desc = 'Copy selection (visual)' }) -- Copy selection in visual mode
map('n', 'Y', '"+yg_', { desc = 'Copy from cursor' }) -- Copy from cursor
map('n', 'yy', '"+yy', { desc = 'Copy entire line' }) -- Copy entire line

map('v', 'p', '"+P', { desc = 'Paste from clipboard (visual)' }) -- Paste from clipboard in visual mode
map('n', 'p', '"+P', { desc = 'Paste from clipboard (normal)' }) -- Paste from clipboard in normal mode

