local ok, lualine = pcall(require, "lualine")
if not ok then
  vim.notify("failed to use cmp.")
  return
end

lualine.setup({
  sections = {
    lualine_c = {{
      'filename',
      path = 1
    }}
  },
  extensions = {'fugitive'},
})

