-----------------------------------------------------------
-- Which-Key Configuration
-- https://github.com/folke/which-key.nvim
-----------------------------------------------------------
local status_ok, wk = pcall(require, 'which-key')
if not status_ok then
  return
end

wk.register(mappings, opts)
