" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" colorschemes
Plug 'w0ng/vim-hybrid'

"Plug 'benekastah/neomake'
" autocomplete
Plug 'Shougo/deoplete.nvim'
" unite awesome plugin
Plug 'Shougo/unite.vim'
" unite dependence
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" Unite plugins
Plug 'ujihisa/unite-colorscheme'
Plug 'Shougo/unite-outline'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/vimfiler.vim'

" editing
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'

" eye candy
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" javascript
"Plug 'guileen/vim-node-dict'
"Plug 'moll/vim-node'
"Plug 'othree/yajs.vim'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug '1995eaton/vim-better-javascript-completion'
"Plug 'gavocanov/vim-js-indent'
"Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
"Plug 'digitaltoad/vim-jade'
"Plug 'elzr/vim-json'
"Plug 'mxw/vim-jsx'

" other
"Plug 'mattn/emmet-vim'
"Plug 'othree/html5.vim'

call plug#end()
