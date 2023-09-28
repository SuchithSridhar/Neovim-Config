function MapJavaBindings()
  -- println command
  vim.keymap.set(
    'i', '<F12>', "System.out.println();<Left><Left>",
    { silent= true }
  )
  vim.keymap.set(
    'n', '<F12>', "System.out.println();<Left><Left>",
    { silent= true }
  )
end

vim.cmd "autocmd FileType java lua MapJavaBindings()"
