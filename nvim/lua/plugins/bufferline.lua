-----------------------------------------------------------
-- Bufferline Configuration
-- https://github.com/akinsho/bufferline.nvim
-----------------------------------------------------------
local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup()
