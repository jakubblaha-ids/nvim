local function showFugitiveGit()
    if vim.fn.FugitiveHead() ~= '' then
        vim.cmd [[
    Git
    " wincmd H  " Open Git window in vertical split
    " setlocal winfixwidth
    " vertical resize 20
    " setlocal winfixwidth
    " setlocal nonumber
    " setlocal norelativenumber
    ]]
    end
end
local function toggleFugitiveGit()
    if vim.fn.buflisted(vim.fn.bufname('fugitive:///*/.git//$')) ~= 0 then
        vim.cmd [[ execute ":bdelete" bufname('fugitive:///*/.git//$') ]]
    else
        showFugitiveGit()
    end
end

vim.keymap.set('n', '<leader>gg', toggleFugitiveGit)
vim.keymap.set('n', '<leader>gg', toggleFugitiveGit)
