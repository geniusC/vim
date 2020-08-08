" 设置编码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 设置主题颜色
set background=dark
colorscheme molokai
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

"弹出框背景色"
highlight Pmenu ctermfg=darkgrey ctermbg=black guifg=darkgrey guibg=black
" 选中项
highlight PmenuSel ctermfg=green  ctermbg=black guifg=green guibg=black

set guifont=Consolas_NF:h11
set guifontwide=LiHei_Pro:h10.5
