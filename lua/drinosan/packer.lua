-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
}

------------------------------------------------------------------------------
-- Color schmemes
use ('folke/tokyonight.nvim')

use ('EdenEast/nightfox.nvim')
------------------------------------------------------------------------------

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('ThePrimeagen/harpoon')


use('mbbill/undotree')
use('tpope/vim-fugitive')


use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},             -- Required
		{'williamboman/mason.nvim'},           -- Optional
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional

		-- Snippets
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional
	}
}

------------------------------------------------------------------------------
-- Cmake nvim
use ('Shatur/neovim-tasks')
------------------------------------------------------------------------------

use ('windwp/nvim-autopairs')

use ('tpope/vim-commentary')

use ('lukas-reineke/indent-blankline.nvim')


use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}


-- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
