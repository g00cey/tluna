call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'lambdalisue/fern.vim'
Plug 'yuki-yano/fern-preview.vim'
Plug 'lambdalisue/gina.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'machakann/vim-sandwich'
Plug 'thinca/vim-quickrun'
Plug 'taku-o/vim-copypath'
Plug 'scrooloose/nerdtree'
Plug 'will133/vim-dirdiff'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'embear/vim-localvimrc'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
