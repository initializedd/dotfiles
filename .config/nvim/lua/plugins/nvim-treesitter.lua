-----------------------------------------------------------
-- Treesitter Configuration
-- https://github.com/nvim-treesitter/nvim-treesitter
-----------------------------------------------------------
local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { "cpp", "c", "cmake", "python", "rust", "lua", "bash", "kotlin", "luadoc", "markdown" },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

