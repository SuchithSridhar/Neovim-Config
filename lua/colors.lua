
-- Set color scheme

local CONFIG_FILE = "$HOME/.config/suchi-color.txt"
local f = io.open(os.getenv("HOME") .. "/.config/suchi-color.txt", 'r')
local theme = "dark"

if f then
  -- read the entire file and remove whitespace
  local content = f:read("*all"):gsub("%s+", "")
  f:close()

  if content ~= "" then
    theme = content
  end
end

if theme == "dark" then
  vim.cmd('colorscheme catppuccin-mocha')
elseif theme == "light" then
  vim.cmd('colorscheme catppuccin-latte')
end
