-----------------------------------------------------------
-- Tree Configuration
-- https://github.com/nvim-tree/nvim-tree.lua
-----------------------------------------------------------
local status_ok, tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

tree.setup()

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {
    noremap = true,
    desc = 'Toggle Nvim Tree'
})

