-----------------------------------------------------------
-- Plenary Configuration
-- https://github.com/nvim-lua/plenary.nvim
-----------------------------------------------------------
local status_ok, plenary = pcall(require, 'plenary')
if not status_ok then
  return
end

