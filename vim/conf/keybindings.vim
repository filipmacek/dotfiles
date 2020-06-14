let mapleader=","
" source ~/dotfiles/vim/autoload/resizer.vim
map <leader>b :call resizer#Meow()<CR>
map <leader>ex :Explore<CR>

noremap <leader>ps :PlugStatus<CR>
map <leader>pi :PlugInstall<CR>

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

map <leader>s :source $MYVIMRC<CR> <bar> :echo "sourced"<CR>

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

inoremap <leader>X <ESC>:q!<CR>
nnoremap <leader>X :q!<CR>

map <M-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Fzf shortcuts
nnoremap <C-t> :Files<cr>
nnoremap <C-f> :Ag<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-c> :Commands<cr>

map <F5> :!clear;python3 %<CR>
imap <F5> :!clear;python3 %<CR>

map <C-V> :edit ~/dotfiles/vim/vimrc.vim<CR>

noremap <leader>np :NERDTreeToggle expand('%:h')

noremap <leader>l :bn<CR>
noremap <leader>h :bp<CR>

noremap <leader>tb :tabnew %<CR>


" YouCompleteMe keybindings
nnoremap gd :YcmCompleter GoToDefinition<CR>
