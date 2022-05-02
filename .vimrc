"styling 
set t_Co=256   " This is may or may not needed.

set background=dark 
colorscheme PaperColor

syntax on 
set number 
set history=1000

"tabs 
set tabstop=4
set softtabstop=4
set expandtab 
set shiftwidth=4

"fuck backups 
set nobackup

"commands 
set showcmd 
set showmatch 
set showmode

" autoconletion
set wildmenu 
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe


set lazyredraw
set nowrap

" searching 
set showmatch 
set incsearch 
set hlsearch 
set ignorecase 

" foldcode 
set foldenable 
set foldlevelstart=10
set foldmethod=indent

"set fold open/closing to space  
nnoremap <space> za

"disable compatibility with vi 
set nocompatible 

"Filetypes - Autodetection - Plugins - indent for filetype  
filetype on 
filetype plugin on 
filetype indent on 


" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

"Nerdtree  
"Toggle C = Ctrl
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
"}}}


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'preservim/nerdtree'
    Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" }}}
