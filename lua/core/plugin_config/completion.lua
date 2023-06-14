require('compe').setup({
    enabled = true,
    autocomplete = true,
    source = {
        path = true,
        buffer = true,
        nvim_lsp = true,
        nvim_lua = true,
        tags = true,
        snippets_nvim = true,
        ultisnips = true,
    },
    mapping = {
        -- Use 'j' and 'k' to scroll down and up in the autocomplete menu
        ['<C-j>'] = "<C-n>",
        ['<C-k>'] = "<C-p>",
    }
})
