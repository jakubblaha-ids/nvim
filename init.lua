require("bullsnail")

-- Hotfix for svelte LSP not updating on TS/JS file change
local function on_attach(on_attach_)
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local buffer = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            on_attach_(client, buffer)
        end,
    })
end

on_attach(function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = { "*.js", "*.ts" },
        callback = function(ctx)
            if client.name == "svelte" then
                client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
            end
        end,
    })
end)
