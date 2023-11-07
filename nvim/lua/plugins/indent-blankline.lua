-----------------------------------------------------------
-- Indent Blankline Configuration
-- https://github.com/lukas-reineke/indent-blankline.nvim
-----------------------------------------------------------
local status_ok, ibl = pcall(require, 'ibl')
if not status_ok then
  return
end

local highlight = {
  "RainbowDelimiterRed",
  "RainbowDelimiterYellow",
  "RainbowDelimiterBlue",
  "RainbowDelimiterOrange",
  "RainbowDelimiterGreen",
  "RainbowDelimiterViolet",
  "RainbowDelimiterCyan",
}

ibl.setup({
    indent = {
        char = '▎',
    },
    scope = {
        highlight = highlight,
    },
})
