function UploadNotes()
  -- Asynchronously upload notes to suchicodes

  vim.notify("Starting the upload process.", vim.log.levels.INFO)

  vim.fn.jobstart("upload-notes.py -s", {
    on_exit = function(_, exit_code, _)
      if exit_code == 0 then
        vim.notify("Upload completed successfully!", vim.log.levels.INFO)
      else
        vim.notify(
          "Upload failed with exit code: " .. exit_code,
          vim.log.levels.ERROR
        )
      end
    end,
  })
end

function MapMarkdownBindings()
  vim.keymap.set("n", "<F12>", UploadNotes, { silent = true })
end

function SetMarkdownSetting()
  vim.opt.textwidth = 80
  vim.opt.expandtab = true
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2

  MapMarkdownBindings()
end

vim.cmd("autocmd FileType markdown lua SetMarkdownSetting()")
