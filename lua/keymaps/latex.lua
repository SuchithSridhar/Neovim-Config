function MapLatexBindings()
    -- Compile document
    vim.keymap.set('n', '<F12>',
                ":w <CR><CR> :!pdflatex % > /dev/null 2>&1<CR><CR>",
                { silent= true })
end

vim.cmd "autocmd FileType tex lua MapLatexBindings()"
