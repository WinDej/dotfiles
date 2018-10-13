" Begin .vimrc

set nocompatible
filetype off

set rtp+=/home/pawel/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'alvan/vim-closetag'
Plugin 'lilydjwg/colorizer'
Plugin 'aperezdc/vim-template'
Plugin 'scrooloose/nerdtree'
Plugin 'Townk/vim-autoclose'
Plugin 'chrisbra/changesPlugin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-syntastic/syntastic'
Plugin 'morhetz/gruvbox'

call vundle#end()

filetype plugin indent on 

set tabstop=4
set shiftwidth=4
set number
set wrapmargin=8
set textwidth=79
set ruler
set t_Co=256
set linespace=0

map <F2> :bn<CR>
map <F3> :bp<CR>
map <tab> gt
map <S-tab> gT
map <F4> :tabnew<cr>

syntax on

set background=dark
colorscheme gruvbox
" set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%) 

set laststatus=2 
let g:airline_detect_paste = 1
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
let g:airline_right_sep=''
let g:airline_right_alt_sep='|'
let g:airline_left_sep=''
let g:airline_left_alt_sep='|'

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"


" Nerd tree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" End .vimrc
