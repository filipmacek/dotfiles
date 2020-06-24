"Global variables

let g:polyglot_disabled=['scala']

let g:base_dir = '~/dotfiles/vim/'
let g:config_path = base_dir.'conf/'

"Change default .vim directory to base_dir with runtime
set rtp-=~/.vim
set rtp+=~/dotfiles/vim

" Source plug 
execute 'source' base_dir.'plug.vim'

let config_list = ['plugins.vim', 'autocmds.vim', 'keybindings.vim', 'coc.vim' , 'youcompleteme.vim'] 
for file in config_list
	exec 'source' config_path.file
endfor

" Source functions
"
for file in split(globpath(base_dir.'functions','*'))
	exec 'source' file
endfor

let g:vimwiki_table_mappings=0


"General Vim settings
set encoding=UTF-8
syntax on	
set nocompatible
filetype plugin on
let mapleader=","
set autoindent	
set tabstop=4
set shiftwidth=4
set dir=/tmp/
set relativenumber 
set number


" Command line height
set ch=2

" Timeout between changing mods,and between mappings
set timeoutlen=2000
set ttimeoutlen=10


"Coloscheme
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'


" Set mouse scrooling for vim instead of tmux
set mouse=a

"For copy pasing with system clipboard use System copy plugin
let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'

let g:coc_node_path='/usr/bin/node'

" YouCompleteMe | SuperTab | UltiSnips
let g:loaded_youcompleteme = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" web search plugin
let g:web_search_command = "firefox"
let g:web_search_query = "https://www.google.com/search?q="
vnoremap SE :WebSearchVisual<CR>

" mapped F5 to execute python program in terminal

" ALE settings
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_enter=0

let g:ale_linters={'python':['flake8']}
let g:ale_fixers={'python':['autopep8']}

let g:UltiSnipsSnippetsDir = '~/dotfiles/vim/UltiSnips'
let g:UltiSnipsSnippetDirectories = ['~/dotfiles/vim/UltiSnips']

"==========================================================
"		Vimwiki
"=========================================================
let g:vimwiki_list = [{'path':'~/Desktop/master-thesis/wiki-diary/','syntax':'markdown','ext':'.md'}]
let g:vimwiki_global_ext=0


let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

