-- autocmd FileType java inoremap <F12> System.out.println();<Left><left>

function MapJavaBindings()
  -- println command
  vim.keymap.set(
    'i', '<F12>', "System.out.println();<Left><Left>",
    { silent= true }
  )
end

vim.cmd "autocmd FileType markdown lua MapMarkdownBindings()"
