function SetMarkdownSetting()
  vim.opt.textwidth = 80
end

vim.cmd "autocmd FileType markdown lua SetMarkdownSetting()"
