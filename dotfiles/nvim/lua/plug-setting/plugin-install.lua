vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/vim-vsnip"
	use {
		'junegunn/fzf.vim',
		requires = { 'junegunn/fzf', run = ':call fzf#install()' }
	}
	use { "wbthomason/packer.nvim" }
	use { 'yuki-yano/fzf-preview.vim', branch = 'release/rpc' }
	use { "ibhagwan/fzf-lua",
	  requires = { "nvim-tree/nvim-web-devicons" }
        }
	use { 'lambdalisue/fern.vim'}
	use { 'yuki-yano/fern-preview.vim' }
	use { 'vim-denops/denops.vim' }
	use { 'lambdalisue/gin.vim' }
	use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
	use { 'machakann/vim-sandwich' }
	use { 'thinca/vim-quickrun' }
	use { 'taku-o/vim-copypath' }
	use { 'scrooloose/nerdtree' }
	use { 'will133/vim-dirdiff' }
	use { 'tpope/vim-fugitive' }
	use { 'rust-lang/rust.vim' }
	use { 'lambdalisue/nerdfont.vim' }
	use { 'lambdalisue/fern-renderer-nerdfont.vim' }
	use { 'ryanoasis/vim-devicons' }
	use { 'embear/vim-localvimrc' }
	use { 'editorconfig/editorconfig-vim' }
	use { 'lambdalisue/fern-git-status.vim' }
	use { 'tpope/vim-dadbod' }
	use { 'kristijanhusak/vim-dadbod-ui' }
	use { 'NTBBloodbath/rest.nvim' }
	use { 'nvim-lua/plenary.nvim' }
	use { 'mopp/makecomp.vim' }
	use {
		'williamboman/mason.nvim',
		config = function() require 'plug-setting.language-server' end,
		requires = {
			'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig',
		}
	}
end)

