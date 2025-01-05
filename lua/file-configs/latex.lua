function MapLatexBindings()
  -- Compile latex document
  vim.keymap.set("n", "<F12>", ":w <CR><CR> :!pdflatex % > /dev/null 2>&1<CR><CR>", { silent = true })
end

function SetLatexSetting()
  vim.opt.textwidth = 80
  vim.opt.expandtab = true
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2

  MapLatexBindings()
end

vim.cmd("autocmd FileType tex lua SetLatexSetting()")
vim.cmd("autocmd FileType latex lua SetLatexSetting()")
