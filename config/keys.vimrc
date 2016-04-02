" map Leader
let mapleader="\<SPACE>"

" Unite - awesome
nnoremap <Leader>fs :Unite -auto-resize source<cr>
nnoremap <Leader>fa :Unite -auto-resize neomru/file neomru/directory file/async directory<cr>
nnoremap <Leader>ff :Unite -auto-resize file_rec/neovim directory file/new<cr>
nnoremap <Leader>fr :Unite -auto-resize neomru/file neomru/directory<cr>
nnoremap <Leader>fh :Unite history/unite<cr>
nnoremap <Leader>ft :Unite -quick-match buffer<cr>
nnoremap <Leader>fb :Unite -auto-resize bookmark<cr>
nnoremap <Leader>/ :Unite grep:.<cr>

" page motion
nnoremap <CR> <C-d>
nnoremap <BS> <C-u>
nnoremap <Leader>cd :lcd %:p:h
nnoremap <Leader>cc :let @+ = expand("%:p:h")<cr>
" in-line scrolling
nmap j gj
nmap k gk
nmap $ g_
" insert semicolon to eol
nnoremap ;; :s/\v(.)$/\=submatch(1)==';' ? '' : submatch(1).';'<CR>
nnoremap ,, :s/\v(.)$/\=submatch(1)==',' ? '' : submatch(1).','<CR>

" search
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
" command mode maps
" better command-line window scrolling with <C-P> & <C-N>
" cnoremap <C-p> <Up>
" cnoremap <C-n> <Down>

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" Function keys
nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <F5> :source $HOME/.config/nvim/init.vim<CR>
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <F7> :UndotreeToggle<CR>
" indent whole file according to syntax rules
noremap <F9> gg=G

" clear hightlight
nnoremap <F3> :set hlsearch!<CR>
" relative line numbers
nnoremap <Leader>3 :NumbersToggle<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Don't use Ex mode, use Q for formatting
map Q gq

" snippets
let g:UltiSnipsExpandTrigger="<c-j>"

" remap number increment to C-s (C-a is already in use by tmux)
nmap <C-s> <C-a>

" Word count selection
vnoremap <Leader>w :w !wc -w<CR>

" vim paste mode toggle (for fixing indentation issues when pasting text)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" allow ,, for vimsneak
nmap <Leader>, <Plug>SneakPrevious

" camelCase motion settings
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" neomake - not use now
" nmap <Leader><Space>o :lopen<CR>
" nmap <Leader><Space>c :lclose<CR>
" nmap <Leader><Space>, :ll<CR>
" nmap <Leader><Space>n :lnext<CR>
" nmap <Leader><Space>p :lprev<CR>

" folding
" nmap <Leader>f zf%

" deoplete tab-complete
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
" ,<tab> for regular tab
inoremap <Leader><Tab> <Space><Space>

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" -----------------------

nmap <Leader>n :NERDTreeFind<CR>
