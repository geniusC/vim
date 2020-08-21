scriptencoding utf-8

call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'dyng/ctrlsf.vim'
Plug 'scrooloose/nerdtree', {'on': ['NERDTree', 'NERDTreeToggle']}
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DrawIt'
Plug 'Valloric/YouCompleteMe'
Plug 'rhysd/vim-clang-format', {'for': ['cpp', 'c']}
Plug 'Yggdroot/LeaderF'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
call plug#end()

IncScript airline.vim
IncScript leaderf.vim
IncScript nerdtree.vim
IncScript ycm.vim
IncScript clang-format.vim
IncScript asynctask.vim
IncScript gutentags.vim
