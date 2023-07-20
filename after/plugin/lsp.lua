local ls = require('luasnip')

require("luasnip.loaders.from_snipmate").load({ path = { "~/.config/nvim/snippets" } })

local lsp = require('lsp-zero').preset({})

-- lsp.format_on_save({
--     servers = {
--         ['lua_ls'] = { 'lua' },
--         ['rust_analyzer'] = { 'rust' },
--         -- ['prettierd'] = { 'svelte', 'js', 'ts' },
--         ['tsserver'] = { 'typescript' }
--     }
-- })

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
    'tsserver',
    'eslint',
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Make sure you setup `cmp` after lsp-zero

local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        ['<tab>'] = cmp.mapping.select_next_item(),
        ['<s-tab>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
    },
    preselect = cmp.PreselectMode.Item,
    completion = {
        completeopt = "menu,menuone"
    },
    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' }
    }
})
