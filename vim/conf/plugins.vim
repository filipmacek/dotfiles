call plug#begin('~/dotfiles/vim/plugged')

" Plug 'honza/vim-snippets'
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
Plug 'drmikehenry/vim-fixkey' 

Plug 'tpope/vim-eunuch'
"Coc and metals
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

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

Plug 'terryma/vim-multiple-cursors'


" Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe',{'do':'./install.py'}

Plug 'simeji/winresizer'


call plug#end()

