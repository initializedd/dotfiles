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

map('n', '<C-j>', ':m .+1<CR>==') -- Move line down
map("n", "<C-k>", ':m .-2<CR>==') -- Move line up
