vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

local function save_and_format()
    -- vim.lsp.buf.format();
    -- filter = function(client) return client.name ~= "eslint_" and client.name ~= "tsserver" end
    vim.cmd('Neoformat');
    vim.cmd.update();
end

vim.keymap.set("i", "<c-s>", "<Esc>:w<CR>")
vim.keymap.set("n", "<c-s>", ":w<CR>")

-- vim.keymap.set("i", "<c-s>", vim.cmd.update)
-- vim.keymap.set("n", "<c-s>", vim.cmd.update)

vim.keymap.set("n", "<leader>fo", save_and_format)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "<c-j>", "5j")
vim.keymap.set("n", "<c-k>", "5k")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "?", ":let @/ = ''<CR>")

vim.keymap.set("n", "<c-n>", ":NvimTreeToggle<CR>")

-- vim.keymap.set("n", "<tab>", vim.cmd.bnext)
-- vim.keymap.set("n", "<s-tab>", vim.cmd.bprev)
vim.keymap.set("n", "<leader>ww!", vim.cmd.bd)

-- vim.keymap.set("n", "<tab>", function() end)
-- vim.keymap.set("n", "<s-tab>", function() end)
-- vim.keymap.set("n", "<leader>ww", function() end)

vim.keymap.set("n", "<leader>pr", ":cd ~/projects<CR>:NvimTreeFocus<CR>")

vim.keymap.set("n", "<leader>ph", ":Gitsigns preview_hunk<CR>")

vim.keymap.set("t", "<c-x>", "<c-\\><c-n>")

-- vim.keymap.set("t", "<c-h>", "<c-\\><c-n><c-6>")
-- vim.keymap.set("n", "<c-h>", "<c-6>")

-- vim.keymap.set("n", "<leader>qf", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>fr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)

vim.keymap.set("v", "<leader>yy", '\"+y')

-- vim.keymap.set("n", "<Tab>", ':bnext<CR>');
-- vim.keymap.set("n", "<s-Tab>", ':bprev<CR>');
-- vim.keymap.set("n", "<F12>", ':bdelete<CR>:bprev<CR>');
