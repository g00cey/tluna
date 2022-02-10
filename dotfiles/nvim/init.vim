source ~/.config/nvim/plug-setting/plugin-install.vim

syntax enable
filetype plugin indent on
set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(%02v)]

set clipboard=unnamed,unnamedplus

"display
set number

if filereadable(expand('~/rcfiles/dbsettings'))
  source ~/rcfiles/dbsettings
endif

source ~/.config/nvim/plug-setting/fern.vim
source ~/.config/nvim/plug-setting/nerdtree.vim
source ~/.config/nvim/plug-setting/fzf.vim
source ~/.config/nvim/plug-setting/coc.vim
source ~/.config/nvim/plug-setting/localvimrc.vim
source ~/.config/nvim/keymap.vim
