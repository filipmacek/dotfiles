call plug#begin('~/dotfiles/vim/plugged')
"For file tree structure
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Comment plug
Plug 'tpope/vim-commentary'

"Plugin for system copy with clipboard
Plug 'christoomey/vim-system-copy'

"Colorschemes and airlines
Plug 'morhetz/gruvbox'

" Tagbar-a class outline viewer
Plug 'majutsushi/tagbar'


" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'sheerun/vim-polyglot'

Plug 'ycm-core/YouCompleteMe'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'

Plug 'alvan/vim-closetag'
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'tpope/vim-surround'

Plug 'dense-analysis/ale'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'linluk/vim-websearch'

Plug 'derekwyatt/vim-scala'

Plug 'liuchengxu/vim-which-key'
call plug#end()
