local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>aa', builtin.live_grep, {})
vim.keymap.set('n', '<leader>oo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<c-p>', builtin.git_files, {})

local function custom_buffers()
    builtin.buffers({ initial_mode = "normal" })
end

vim.keymap.set('n', '<leader>jk', custom_buffers)
vim.keymap.set('n', '<c-l>', custom_buffers)

require('telescope').load_extension('projects')

vim.keymap.set('n', '<leader>pp', require 'telescope'.extensions.projects.projects, {})

require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close,
            }
        },
        initial_mode = "insert",
        preview = false,
    },
    pickers = {
        buffers = {
            mappings = {
                n = {
                    ["dd"] = actions.delete_buffer,
                    ["<c-l>"] = actions.close
                },
                i = {
                    ["<c-l>"] = actions.close
                }
            },
            sort_lastused = true
        },
        oldfiles = {
            sort_lastused = true,
            initial_mode = "normal",
        },
        git_files = {
            mappings = {
                n = {
                    ["<c-p>"] = actions.close
                },
                i = {
                    ["<c-p>"] = actions.close
                }
            },
            sort_lastused = true
        }
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    }
}
