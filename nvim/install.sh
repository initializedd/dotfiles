#!/bin/bash
plugin_path="pack/plugins/start"

mkdir -p "$plugin_path"

repositories=(
    "catppuccin/nvim"
    "nvim-lualine/lualine.nvim"
    "neovim/nvim-lspconfig"
    "hrsh7th/nvim-cmp"
    "hrsh7th/cmp-buffer"
    "saadparwaiz1/cmp_luasnip"
    "hrsh7th/cmp-path"
    "hrsh7th/cmp-cmdline"
    "hrsh7th/cmp-nvim-lsp"
    "mfussenegger/nvim-dap"
    "nvim-neotest/nvim-nio"
    "rcarriga/nvim-dap-ui"
    "L3MON4D3/LuaSnip"
    "nvim-lua/plenary.nvim"
    "nvim-telescope/telescope.nvim"
    "nvim-tree/nvim-tree.lua"
    "nvim-treesitter/nvim-treesitter"
    "windwp/nvim-autopairs"
    "akinsho/bufferline.nvim"
    "goolord/alpha-nvim"
    "lukas-reineke/indent-blankline.nvim"
    "folke/which-key.nvim"
)

cd "$plugin_path"

for repo in "${repositories[@]}"; do
    repo_name=$(basename "$repo")
    if [ -d "$repo_name" ]; then
        echo "Updating $repo_name..."
        cd "$repo_name" && git pull
        cd ..
    else
        echo "Cloning $repo_name..."
        git clone "https://github.com/$repo" "$repo_name"
    fi
done
