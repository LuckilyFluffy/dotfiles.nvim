-- Bootstrapy lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        -- latest stable release
        "--branch=stable",
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
    -- Pretty stuff :3
    {
        "morhetz/gruvbox",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
        end
    },

    -- LSP (the big one :O)
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- Autocompletion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "saadparwaiz1/cmp_luasnip",
    "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",

    -- Snippets
    { "L3MON4D3/LuaSnip" },
    { "rafamadriz/friendly-snippets" },

    -- Rust stuff
    "simrat39/rust-tools.nvim",

    -- Usefull stuff
    "tpope/vim-commentary",
    "mg979/vim-visual-multi",
    "cohama/lexima.vim",
    "jbyuki/instant.nvim",
    "ThePrimeagen/vim-be-good",

    -- Other stuff
    "ap/vim-css-color",
    "ryanoasis/vim-devicons",
    "nvim-tree/nvim-web-devicons",
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        priority = 1000,
        config = function()
            require("nvim-tree").setup({
                sync_root_with_cwd = true
            })
        end
    },
    "vim-airline/vim-airline",
    "andweeb/presence.nvim"
})
