function SetMarkdownSetting()
  vim.opt.textwidth = 80
  vim.opt.expandtab = true
  vim.opt.tabstop = 4
end

vim.cmd "autocmd FileType markdown lua SetMarkdownSetting()"
