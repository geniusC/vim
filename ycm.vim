
"-----------------------------------------------------
" YouCompleteMe
"-----------------------------------------------------
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 1
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
"let g:ycm_disable_signature_help = 1
let g:ycm_max_num_candidates = 15
let g:ycm_enable_diagnostic_signs = 0
set completeopt=menu,menuone

if has('patch-8.0.1000')
	set completeopt=menu,menuone,noselect
endif
noremap <Leader>j :YcmCompleter GoTo<CR>
noremap <Leader>d :YcmCompleter GoToDeclaration<CR>
noremap <Leader>i :YcmCompleter GoToDefinition<CR>
noremap <Leader>r :YcmCompleter GoToReferences<CR>
noremap <Leader>e :YcmDiags<CR>

" noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_error_symbol = '>'
let g:ycm_warning_symbol = '!'

"----------------------------------------------------------------------
" find '.ycm_extra_conf.py' in YouComplete/third_party/ycmd
"----------------------------------------------------------------------
" let g:ycm_global_ycm_extra_conf = 'd:/dev/vim/ycm_extra_conf.py'

" remove auto hover
let g:ycm_auto_hover = ''


"----------------------------------------------------------------------
" Ycm White List
"----------------------------------------------------------------------
let g:ycm_filetype_whitelist = { 
			\ "c":1,
			\ "cpp":1, 
			\ "objc":1,
			\ "objcpp":1,
			\ "python":1,
			\ "java":1,
			\ "javascript":1,
			\ "coffee":1,
			\ "vim":1, 
			\ "go":1,
			\ "cs":1,
			\ "lua":1,
			\ "perl":1,
			\ "perl6":1,
			\ "php":1,
			\ "ruby":1,
			\ "rust":1,
			\ "erlang":1,
			\ "asm":1,
			\ "nasm":1,
			\ "masm":1,
			\ "tasm":1,
			\ "asm68k":1,
			\ "asmh8300":1,
			\ "asciidoc":1,
			\ "basic":1,
			\ "vb":1,
			\ "make":1,
			\ "cmake":1,
			\ "html":1,
			\ "css":1,
			\ "less":1,
			\ "json":1,
			\ "cson":1,
			\ "typedscript":1,
			\ "haskell":1,
			\ "lhaskell":1,
			\ "lisp":1,
			\ "scheme":1,
			\ "sdl":1,
			\ "sh":1,
			\ "zsh":1,
			\ "bash":1,
			\ "man":1,
			\ "markdown":1,
			\ "matlab":1,
			\ "maxima":1,
			\ "dosini":1,
			\ "conf":1,
			\ "config":1,
			\ "zimbu":1,
			\ "ps1":1
			\ }


" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0

