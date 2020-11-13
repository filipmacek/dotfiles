call plug#begin('~/dotfiles/vim/plugged')

" Plug 'honza/vim-snippets'
"For file tree structure
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim',{'do':'cd app & yarn install'}
Plug 'junegunn/limelight.vim'

Plug 'mattn/calendar-vim'

Plug 'yuttie/comfortable-motion.vim'

" Plug 'blindFS/vim-taskwarrior'
" Plug 'tbabej/taskwiki'

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

Plug 'vimwiki/vimwiki'
" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'sheerun/vim-polyglot'
Plug 'drmikehenry/vim-fixkey' 

Plug 'hashivim/vim-terraform'

Plug 'tpope/vim-eunuch'
"Coc and metals
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdtree'
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

Plug 'rhysd/vim-grammarous'

" Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe',{'do':'./install.py'}

Plug 'simeji/winresizer'


Plug 'moll/vim-bbye'

" React - JavaScript
"  1)Syntax Highlighting
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" 2) JSON support
Plug 'elzr/vim-json'
" 3) Emmet support
Plug 'mattn/emmet-vim'
" 4) Prettier
" Plug 'prettier/vim-prettier', {'do': 'yarn install','for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json','graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Plug 'jelera/vim-javascript-syntax'

call plug#end()

