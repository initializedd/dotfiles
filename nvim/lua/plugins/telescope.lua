-----------------------------------------------------------
-- Telescope Configuration
-- https://github.com/nvim-telescope/telescope.nvim
-----------------------------------------------------------
local status_ok, builtin = pcall(require, 'telescope.builtin')
if not status_ok then
  return
end

-----------------------------------------------------------
-- File Pickers
-----------------------------------------------------------
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' }) -- Lists files in working dir
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Git Files' }) -- Fuzzy search through the output of git ls-files
vim.keymap.set('n', '<leader>gs', builtin.grep_string, { desc = 'Grep String' }) -- Searches for the string under your cursor in working dir
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Live Grep' }) -- Search for a string in working dir

-----------------------------------------------------------
-- Vim Pickers
-----------------------------------------------------------
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' }) -- Lists open buffers in current neovim instance

-----------------------------------------------------------
-- LSP Pickers
-----------------------------------------------------------
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, { desc = 'Goto LSP Definition' }) -- Goto the definition of the word under the cursor
