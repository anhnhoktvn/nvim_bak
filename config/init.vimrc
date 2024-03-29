call plug#begin('~/.config/nvim/plugged')

" colorschemes
Plug 'w0ng/vim-hybrid'
Plug 'mhartington/oceanic-next'

" general
" Plug 'ervandew/supertab'
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'haya14busa/incsearch.vim'
"Plug 'kien/ctrlp.vim'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'tpope/vim-fugitive'

" Unite plugins
Plug 'ujihisa/unite-colorscheme'

" editing
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/camelcasemotion'

" eye candy
Plug 'myusuf3/numbers.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" javascript
Plug 'guileen/vim-node-dict'
Plug 'moll/vim-node'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'gavocanov/vim-js-indent'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'digitaltoad/vim-jade'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'

" other
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/csscomplete.vim'
Plug 'groenewege/vim-less'

call plug#end()
