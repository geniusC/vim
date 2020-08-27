scriptencoding utf-8

"----------------------------------------------------------------------
" keymap
"----------------------------------------------------------------------
let g:Lf_ShortcutF = '<c-p>'
noremap <c-n> :cclose<cr>:Leaderf --nowrap mru --regexMode<cr>
noremap <Leader>p :cclose<cr>:Leaderf --nowrap function<cr>
noremap <Leader>P :cclose<cr>:Leaderf --nowrap tag<cr>
noremap <Leader>n :cclose<cr>:Leaderf --nowrap buffer<cr>
noremap <Leader>m :cclose<cr>:Leaderf --nowrap bufTag<cr>
let g:Lf_MruMaxFiles = 30
"let g:Lf_StlSeparator = { 'left': get(g:, 'airline_left_sep', ''), 'right': get(g:, 'airline_right_sep', ''), 'font': '' }
let g:Lf_StlSeparator = { 'left': "", 'right': "" }
"let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': '' }
noremap <silent> <Leader>g :Leaderf! --nowrap --popup --popup-width=60 task<cr>
inoremap <silent> <Leader>g<esc> :Leaderf! --nowrap --popup --popup-width=60 task<cr>

if has('gui_running')
	noremap <c-f12> :Leaderf --nowrap task<cr>
	inoremap <c-f12> <esc>:Leaderf --nowrap task<cr>
endif


"----------------------------------------------------------------------
" LeaderF
"----------------------------------------------------------------------
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
let g:Lf_NoChdir = 1

let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
			\ }

let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']
let g:Lf_MruMaxFiles = 2048
let g:Lf_StlColorscheme = 'dark'
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

let g:Lf_NormalMap = {
        \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']],
		\ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<cr>']],
		\ "Mru": [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<cr>']],
		\ "Tag": [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<cr>']],
		\ "BufTag": [["<ESC>", ':exec g:Lf_py "bufTagExplManager.quit()"<cr>']],
		\ "Function": [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<cr>']],
		\ }

"if (exists('*popup_create') && has('patch-8.1.2000')) || has('nvim-0.4')
"	let g:Lf_WindowPosition = 'popup'
"endif



"----------------------------------------------------------------------
" source task
"----------------------------------------------------------------------
function! s:lf_task_source(...)
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	return source
endfunc


function! s:lf_task_accept(line, arg)
	let pos = stridx(a:line, '<')
	if pos < 0
		return
	endif
	let name = strpart(a:line, 0, pos)
	let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
	redraw
	if name != ''
		exec "AsyncTask " . name
	endif
endfunc

function! s:lf_task_digest(line, mode)
	let pos = stridx(a:line, '<')
	if pos < 0
		return [a:line, 0]
	endif
	let name = strpart(a:line, 0, pos)
	return [name, 0]
endfunc

function! s:lf_win_init(...)
	setlocal nonumber
	setlocal nowrap
endfunc

let g:Lf_CtagsFuncOpts = {
      \'c': '--c-kinds=+px',
      \'cpp': '--c++-kinds=+px',
      \'*': '--fields=+niazS --extra=+q --output-format=e-ctags'
      \}

let g:Lf_Extensions = get(g:, 'Lf_Extensions', {})
let g:Lf_Extensions.task = {
			\ 'source': string(function('s:lf_task_source'))[10:-3],
			\ 'accept': string(function('s:lf_task_accept'))[10:-3],
			\ 'get_digest': string(function('s:lf_task_digest'))[10:-3],
			\ 'highlights_def': {
			\     'Lf_hl_funcScope': '^\S\+',
			\     'Lf_hl_funcDirname': '^\S\+\s*\zs<.*>\ze\s*:',
			\ },
			\ 'after_enter': string(function('s:lf_win_init'))[10:-3],
		\ }

let g:Lf_WindowPosition='bottom'
" echo s:lf_task_source()

