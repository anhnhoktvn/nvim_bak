" map Leader
let mapleader="\<SPACE>"

" -------------------------- Unite -----------------------
nnoremap <Leader>fa :lcd %:p:h\|:UniteWithCurrentDir -no-split neomru/file file_rec/async file/new<cr>
nnoremap <Leader>ff :lcd %:p:h\|:UniteWithCurrentDir -no-split file_rec/async file/new<cr>
nnoremap <Leader>fr :Unite -no-split neomru/file file/new<cr>
nnoremap <Leader>fh :Unite history/unite<cr>
nnoremap <Leader>ft :Unite -quick-match buffer<cr>
nnoremap <Leader>fb :Unite -no-split bookmark<cr>
nnoremap <Leader>/ :Unite grep:.<cr>
nnoremap <leader>fg :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>

" ----------Function keys------------

nnoremap <F1> :VimFilerExplorer -parent -auto-cd -status -explorer-columns=type -project<cr>
nnoremap <F2> :VimFilerExplorer -parent -auto-cd -status -explorer-columns=type bookmark:<cr>
nnoremap <F3> :Unite source -toggle<cr>
nnoremap <F4> :UniteWithCurrentDir source -toggle<cr>
nnoremap <F5> :source $HOME/.config/nvim/init.vim<CR>

" save
nnoremap q :w<cr>
" clear hightlight
nnoremap <Leader>h :set hlsearch!<CR>

" set current working dir
nnoremap <Leader>cd :lcd %:p:h
" copy current file directory
nnoremap <Leader>cc :let @+ = expand("%:p:h")<cr>
" better motion
nmap j gj
nmap k gk
nmap $ g_
nnoremap <CR> <C-d>
nnoremap <BS> <C-u>
nnoremap <Leader>n :pu_<cr>
nnoremap <Leader>N :pu!_<cr>

" insert semicolon to eol
nnoremap ;; :s/\v(.)$/\=submatch(1)==';' ? '' : submatch(1).';'<CR>
nnoremap ,, :s/\v(.)$/\=submatch(1)==',' ? '' : submatch(1).','<CR>

" visual search & replace
vnoremap <C-r> :s/\%V
" termial
function! Openterm()
  execute 'new'
  execute termopen("cd " . getcwd() . " && " . $SHELL)
  execute 'startinsert'
endfunction
" open
nnoremap <Leader>tt :call Openterm()<CR>
" escape
tnoremap <C-a> <C-\><C-n>
" exit
tnoremap <Esc><Esc> <C-\><C-n>:bd!<CR>

" buffer keys
nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bf :bf<CR>
nnoremap <Leader>bl :bl<CR>
nnoremap <Leader>bw :w<CR>:bd<CR>
nnoremap <Leader>bd :bd!<CR>
nnoremap <Leader>bc :bd<CR>
nnoremap <Leader>bQ :%bd<CR>
nnoremap <Leader>bq :bd<CR>
nnoremap <Leader>bs :sp \| b
nnoremap <Leader>bv :vsp \| b
" new buffer/tab
nnoremap <Leader>e :enew<CR>

" window keys
nnoremap <Leader>wo :on<cr>
nnoremap <Leader>w\| <C-w>\|
nnoremap <Leader>w_ <C-w>_
nnoremap <Leader>w= <C-w>=
nnoremap <Leader>w< <C-w><
nnoremap <Leader>w> <C-w>>
nnoremap <Leader>w- <C-w>-
nnoremap <Leader>w+ <C-w>+
nnoremap <Leader>wq <C-w>q
nnoremap <Leader>ww <C-w>w
nnoremap <Leader>wp <C-w>p
nnoremap <Leader>wt <C-w><C-t>
nnoremap <Leader>wr <C-w>r
nnoremap <Leader>wL <C-w>L
nnoremap <Leader>wH <C-w>H
nnoremap <Leader>wJ <C-w>J
nnoremap <Leader>wK <C-w>K
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wx :close<CR>
nnoremap <Leader>ws :sp \| b
nnoremap <Leader>wv :vsp \| b

" override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" deoplete tab-complete
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
" --------------------------------
"nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" %% to expand active buffer location on cmdline
"cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Don't use Ex mode, use Q for formatting
"map Q gq

" snippets
"let g:UltiSnipsExpandTrigger="<c-j>"

" remap number increment to C-s (C-a is already in use by tmux)
"nmap <C-s> <C-a>

" Word count selection
"vnoremap <Leader>w :w !wc -w<CR>

" vim paste mode toggle (for fixing indentation issues when pasting text)
"nnoremap <F2> :set invpaste paste?<CR>
"set pastetoggle=<F2>
"set showmode

