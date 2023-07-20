-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        },

        -- use('drewtempelmeyer/palenight.vim', {}),

        use('nvim-tree/nvim-tree.lua', {}),
        use('nvim-tree/nvim-web-devicons', {}),

        use("petertriho/nvim-scrollbar"),

        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        },

        -- Lua
        use {
            "ahmedkhalf/project.nvim",
            config = function()
                require("project_nvim").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        },

        use("tpope/vim-fugitive"),

        use { "lewis6991/gitsigns.nvim",
            config = function() require('gitsigns').setup() end
        },

        use("NvChad/nvterm"),
        use("NvChad/base46"),

        use("marko-cerovac/material.nvim"),
        use 'm4xshen/autoclose.nvim',

        use 'feline-nvim/feline.nvim',
        use 'xiyaowong/transparent.nvim',
        use { 'L3MON4D3/LuaSnip' },
        use { 'saadparwaiz1/cmp_luasnip' },
        use { 'mhartington/formatter.nvim' },
        use("tiagovla/scope.nvim"),
        use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' },
    }
end)
