function SetLatexSetting()
  vim.opt.textwidth = 80
end

vim.cmd "autocmd FileType tex lua SetLatexSetting()"
vim.cmd "autocmd FileType latex lua SetLatexSetting()"
