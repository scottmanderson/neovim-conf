" Lua
autocmd BufNewFile,BufRead *.lua
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
autocmd BufWritePre *.lua lua vim.lsp.buf.format({ async = false })
