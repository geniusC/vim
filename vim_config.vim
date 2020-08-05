scriptencoding utf-8
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

filetype indent on
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

set t_Co=256

" vim 自身命令行模式智能补全
set wildmenu

" 禁止折行
set nowrap" 禁止折行

let mapleader = "\<space>"

let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:vim_config#windows = has('win32') || has('win64') || has('win95') || has('win16')

command! -nargs=1 IncScript exec 'so '. fnameescape(s:home."/<args>")

function! vim_config#path(path)
	let path = expand(s:home . '/' . a:path )
	return substitute(path, '\\', '/', 'g')
endfunc

function! s:path(path)
	return bundle#path(a:path)
endfunc



IncScript plugins.vim
IncScript ui.vim
IncScript keymap.vim
