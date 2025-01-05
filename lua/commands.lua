local create_cmd = vim.api.nvim_create_user_command

create_cmd("SpellToggle", "set spell!", { desc = "Toggle spell checker" })

create_cmd(
  "AddCreditsHash",
  "read $HOME/Programming/snippets/author-hash.txt",
  { desc = "Insert credits snippets preceded with hashes" }
)

create_cmd(
  "AddCreditsSlash",
  "read $HOME/Programming/snippets/author-slash.txt",
  { desc = "Insert credits snippets preceded with slashes" }
)

create_cmd(
  "AddCreditsStar",
  "read $HOME/Programming/snippets/author-slash-star.txt",
  { desc = "Insert credits snippets preceded with slash star" }
)

create_cmd("Tab2", "set tabstop=2 softtabstop=2 shiftwidth=2", { desc = "Set the tabstop to 2 for current file" })

create_cmd("Tab4", "set tabstop=4 softtabstop=4 shiftwidth=4", { desc = "Set the tabstop to 4 for current file" })

create_cmd("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({
    async = true,
    lsp_format = "fallback",
    range = range,
  })
end, { range = true })

create_cmd("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})

create_cmd("FormatEnable", function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = "Re-enable autoformat-on-save",
})
