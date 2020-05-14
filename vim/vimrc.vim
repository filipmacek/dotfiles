so ~/dotfiles/vim/autoload/plug.vim
call plug#begin('~/dotfiles/vim/plugged')
"For file tree structure
Plug 'preservim/nerdtree'

"Airline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Comment plug
Plug 'tpope/vim-commentary'

"Plugin for system copy with clipboard
Plug 'christoomey/vim-system-copy'

"Colorschemes and airlines
Plug 'morhetz/gruvbox'

"Full path fuzzy finder
Plug 'kien/ctrlp.vim'

" Tagbar-a class outline viewer
Plug 'majutsushi/tagbar'

call plug#end()


" General Vim settings
	syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber 
	set number

"Coloscheme
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'


"Movement
nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg

"Window switching
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j

" Set mouse scrooling for vim instead of tmux
set mouse=a


"Visual select line
nnoremap vv 0v$

" Insert newline without entering insert mode
nmap <CR> o<Esc>
"File and window management
inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

inoremap <leader>x <ESC>:x<CR>
nnoremap <leader>x :x<CR>


"For copy pasing with system clipboard use System copy plugin
let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>



