-----------------------------------------------------------
-- General Neovim settings and configuration
-----------------------------------------------------------
local g = vim.g             -- Global variables
local opt = vim.opt         -- Set options (global/buffer/windows-scoped)

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true           -- Show line number
opt.relativenumber = true   -- Show relative line numbers
opt.showmatch = true        -- Highlight matching parenthesis
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
opt.colorcolumn = '120'     -- Line length marker at 120 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus=3            -- Set global statusline

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 250        -- ms to wait for trigger an event

-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
opt.shortmess:append 'sI'   -- Disable nvim intro

