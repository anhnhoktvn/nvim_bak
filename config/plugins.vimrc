filetype plugin indent on

colorscheme hybrid
set background=dark

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 0
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" VimFiler
let g:vimfiler_as_default_explorer = 1
" Unite
let g:unite_source_rec_max_cache_files = 500

" ============================================================================
" Extension: neomru settings
" ============================================================================

if exists("g:plugs['neomru.vim']")
  let g:neomru#update_interval      = 300     " Update cache every 5 minutes
  let g:neomru#file_mru_limit       = 200     " Fewer files in mru
  let g:neomru#directory_mru_limit  = 0       " Don't list directories
endif

" candidates
let g:unite_source_grep_max_candidates = 300

"" neomake config
"autocmd! BufWritePost * Neomake
"" autocmd BufLeave * QFix
"
"let g:neomake_warning_sign = {
"  \ 'text': 'W',
"  \ 'texthl': 'WarningMsg',
"  \ }
"
"let g:neomake_error_sign = {
"  \ 'text': 'E',
"  \ 'texthl': 'ErrorMsg',
"  \ }
"
"let g:neomake_open_list = 2
"
"let g:neomake_javascript_enabled_makers = ['eslint']
"
"
"
"" CtrlP
"let g:ctrlp_prompt_mappings={'PrtClearCache()':['<Leader><F5>']}
"let g:ctrlp_prompt_mappings={'PrtdeleteEnt()':['<Leader><F7>']}
"let g:ctrlp_match_window='bottom,order:btt,min:2,max:25'
"set wildmenu " enhanced autocomplete
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot
"",*public/css/*,*public/js*
"let g:ctrlp_working_path_mode = 'rw'
"
"" NERDTree
"let g:NERDTreeChDirMode       = 2
"
"" delimitMate options
"let delimitMate_expand_cr=1
"
"" enable matchit (for matching tags with %)
"runtime macros/matchit.vim
"
"" vim-sneak settings
"hi SneakPluginTarget ctermfg=black ctermbg=181818
"
"" javascript libraries syntax
"let g:used_javascript_libs = 'jquery,underscore,react,flux,chai'
"
"" completion
"augroup omnifuncs
"  autocmd!
"  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"augroup end
"
"" tern
"if exists('g:plugs["tern_for_vim"]')
"  let g:tern_show_argument_hints = 'on_hold'
"  let g:tern_show_signature_in_pum = 1
"
"  autocmd FileType javascript setlocal omnifunc=tern#Complete
"endif
"
