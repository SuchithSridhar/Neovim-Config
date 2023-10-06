function SetLatexSetting()
  vim.opt.textwidth = 80
  vim.opt.expandtab = true
  vim.opt.tabstop = 4
  vim.opt.shiftwidth = 4
end

vim.cmd "autocmd FileType tex lua SetLatexSetting()"
vim.cmd "autocmd FileType latex lua SetLatexSetting()"
