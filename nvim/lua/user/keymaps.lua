local explorer_size = 15
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Open explorer.
keymap("n", "<leader>e", string.format(":NvimTreeToggle<cr>", explorer_size), opts)

-- Telescope
local ok, builtin = pcall(require, 'telescope.builtin')
if not ok then
  return
end
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fe', builtin.diagnostics, {})

