local colorscheme = "nord"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  vim.notify(string.format("colorscheme %s not found", colorscheme))
  return
end

-- This will set the background for files and the end of files to be blank, thus
-- using whatever the terminal gives us.
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")

