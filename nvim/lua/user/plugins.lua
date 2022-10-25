vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- Have packer manage itself
  use "wbthomason/packer.nvim"
  -- An implementation of the popup API in nvim.
  use "nvim-lua/popup.nvim"
  -- Nord theme
  use "arcticicestudio/nord-vim"

  -- completion plugins
  -- The completion plugin.
  use "hrsh7th/nvim-cmp"
  -- Buffer completions.
  use "hrsh7th/cmp-buffer"
  -- Command line completion.
  use "hrsh7th/cmp-cmdline"
  -- LSP related completions.
  use "hrsh7th/cmp-nvim-lsp"
  -- Snippet completions.
  use "saadparwaiz1/cmp_luasnip"

  -- Snippets.
  -- Snippet engine.
  use "L3MON4D3/LuaSnip"
  -- A bunch of snippets to use.
  use "rafamadriz/friendly-snippets"

  -- LSP
  -- Enable LSP
  use "neovim/nvim-lspconfig"
  -- Simple to use language server installation
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Rust tools
  use "simrat39/rust-tools.nvim"

  -- Powerline ish
  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.0",
    requires = { { "nvim-lua/plenary.nvim" } },
  }
  
  -- Tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }

  -- Fugitive, for git stuff
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  if PACKER_BOOSTRAP then
    require("packer").sync()
  end
end)
