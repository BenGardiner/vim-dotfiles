set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'bling/vim-airline'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-dispatch'
Plugin 'dhruvasagar/vim-markify'
Plugin 'ervandew/supertab'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'ton/vim-bufsurf'
Plugin 'jansenm/vim-cmake'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/syntaxm4.vim'
Plugin 'tpope/vim-unimpaired'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme molokai

set list listchars=tab:\›\ ,trail:\-,extends:\>,precedes:\<

set wildmode=longest,list,full
set wildmenu

set hlsearch

" don't treat any and all stderr output as a quickfix entry
let &l:efm = &efm . ',%-G%.%#'

" Increase OmniCppComplete usability
if v:version >= 700
  set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
  let OmniCpp_GlobalScopeSearch   = 1
  let OmniCpp_DisplayMode         = 1
  let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
  let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
  let OmniCpp_ShowAccess          = 1 "show access in pop-up
  let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
  set completeopt=menuone,menu,longest
endif

syntax on
filetype on
au BufNewFile,BufRead *.te set filetype=m4

