-- Mason
require("mason").setup()
require("mason-lspconfig").setup({
    -- Always installed
    ensure_installed = { "clangd", "lua_ls", "rust_analyzer" }
})

-- Cmp
local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({
    -- Snippet engine
    snippet = {
        -- IMPORTANT: this is required for nvim-cmp to work
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },

    -- Mappings
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),

        ["<C-e>"] = cmp.mapping.abort(),

        ["<C-Space>"] = cmp.mapping.complete(),
        ["<TAB>"] = cmp.mapping.confirm({ select = true })
    }),

    -- Sources
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" }
    })
})

-- Mappings

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local bufopts = { noremap = true, silent = true }
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)

-- Inspect code
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)

-- TODO: What are workspaces?
vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, bufopts)

-- Auto code
vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, bufopts)

local on_attach = function(_, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

-- Server configs
local lspconfig = require("lspconfig")

local lsp_flags = {
    debounce_text_changes = 150
}

-- C++
lspconfig.clangd.setup {
    on_attach = on_attach,
    flags = lsp_flags
}

-- Lua
lspconfig.lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags
}

-- Rust
lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    flags = lsp_flags
}
require("rust-tools").setup()

-- Toggle diag
require("toggle_lsp_diagnostics").init()
