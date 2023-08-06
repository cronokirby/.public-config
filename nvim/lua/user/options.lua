local options = {
  -- Don't create a backup file.
  backup = false,
  -- Use the system clipboard.
  clipboard = "unnamedplus",
  -- More space in the command line
  cmdheight = 1,
  -- Completion options
  completeopt = { "menuone", "noselect" },
  -- So that `` is visible in Markdown files
  conceallevel = 0,
  -- Use UTF-8 for file encoding.
  fileencoding = "utf-8",
  -- Highlight all matches on previous searches?
  hlsearch = false,
  -- Ignore case in search patterns
  ignorecase = true,
  -- Allow the mouse to be used.
  mouse = "a",
  -- Pop up menu height.
  pumheight = 10,
  -- indentation mode
  autoindent = true,
  -- Don't need to see INSERT and stuff.
  showmode = false,
  -- Smart case.
  smartcase = true,
  -- Force all horizontal splits to be below.
  splitbelow = true,
  -- Force all vertical splits to be to the right.
  splitright = true,
  -- Create a swapfile
  swapfile = true,
  -- Set term GUI colors.
  termguicolors = true,
  -- Time to wait for mapped sequences to finish
  timeoutlen = 1000,
  -- Enable persistent undo
  undofile = true,
  -- Faster completion
  updatetime = 300,
  -- If a file is being edited by another program
  writebackup = false,
  -- soft tabs
  expandtab = true,
  -- Tab width of 2
  shiftwidth = 2,
  tabstop = 2,
  -- Highlight the current line.
  cursorline = false,
  -- Numbered lines, relative
  number = true,
  relativenumber = true,
  -- Always show sign column
  signcolumn = "yes",
  -- Scroll to always show 8 lines.
  scrolloff = 8,
  sidescrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append("c")

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd("set iskeyword+=-")

