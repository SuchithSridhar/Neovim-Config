local ks = vim.keymap.set

-- Buffer Line Keymaps
ks("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "[B]uffer [P]in toggle" })
ks("n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", { desc = "[B]uffer [P]urge non-pinned" })
ks("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "[B]uffer [O]ther buffers close" })
ks("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", { desc = "[B]uffer close [R]ight" })
ks("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", { desc = "[B]uffer close [L]eft" })
ks("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Cycle Previous buffer" })
ks("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Cycle Next buffer" })
