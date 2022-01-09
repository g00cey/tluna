if has("win32") || has("win64")
  set rtp+=~/.config/nvim/bundle/Vundle.vim
else
  set rtp+=~/.config/nvim/bundle/Vundle.vim
endif

call vundle#begin()

"Plugin 'neoclide/coc.nvim'
Plugin 'junegunn/fzf'
Plugin 'yuki-yano/fzf-preview.vim'
Plugin 'lambdalisue/gina.vim'
Plugin 'go.vim'
Plugin 'dbext.vim'
Plugin 'vimgrep.vim'
Plugin 'Align'
Plugin 'quickrun.vim'
Plugin 'copypath.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'DirDiff.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on
syntax on

"display
set number

"print
set printoptions=number:y

"neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

"srcexplorer
" // The switch of the Source Explorer
nmap <F8> :SrcExplToggle<CR>

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
      \ "__Tag_List__",
      \ "_NERD_tree_",
      \ "Source_Explorer"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 1

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" //another vim settings read
if filereadable(expand('~/rcfiles/dbsettings'))
  source ~/rcfiles/dbsettings
endif

