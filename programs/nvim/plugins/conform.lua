local conform = require 'conform'

conform.setup {
    formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        lua = { 'stylua' },
        python = { 'isort', 'black' },
    },
    format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
    },
}

vim.keymap.set({ 'n', 'v' }, '<leader>df', function()
    conform.format { lsp_fallback = true, async = false, timeout_ms = 1000 }
end, { desc = 'Format document or range' })
