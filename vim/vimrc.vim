so ~/dotfiles/vim/autoload/plug.vim
call plug#begin('~/dotfiles/vim/plugged')

"For file tree structure
Plug 'preservim/nerdtree'

"Colorschemes and airlines
Plug 'morhetz/gruvbox'

call plug#end()


"Coloscheme
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'


map <C-n> :NERDTreeToggle<CR>


" General Vim settings
	syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set relativenumber 
	set number

