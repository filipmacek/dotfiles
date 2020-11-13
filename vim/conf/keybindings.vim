let mapleader=","
" source ~/dotfiles/vim/autoload/resizer.vim
map <leader>ex :Explore<CR>


"==========================================================
"		Vim Plug
"=========================================================
noremap <leader>ps :PlugStatus<CR>
noremap <leader>pi :PlugInstall<CR>
noremap <leader>pe :e ~/dotfiles/vim/conf/plugins.vim<CR>

noremap <leader>mp :MarkdownPreview<CR>


imap jj <Esc>

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

"==========================================================
"		Fzf vim
"=========================================================
nnoremap <C-t> :Files<cr>
nnoremap <C-f> :Ag<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-c> :Commands<cr>

map <F5> :!clear;python3 %<CR>
imap <F5> :!clear;python3 %<CR>

map <M-V> :edit ~/dotfiles/vim/vimrc.vim<CR>

noremap <leader>np :NERDTreeToggle expand('%:h')

"==========================================================
"		Buffer navigation a deletion
"=========================================================
noremap <leader>l :bn<CR>
noremap <leader>k :bp<CR>
noremap <leader>m :Bdelete<CR>

noremap <leader>tb :tabnew %<CR>

"==========================================================
"		Limelight
"=========================================================
noremap <M-l> :Limelight<CR>
noremap <M-l>q :Limelight!<CR>

"==========================================================
"		Vim grammarous
"=========================================================
" noremap pn <Plug>(grammarous-move-to-next-error)
" noremap pp <Plug>(grammarous-move-to-previous-error)
" noremap px <Plug>(grammarous-remove-error)
" noremap pd <Plug>(grammarous-disable-rule)
" noremap pf <Plug>(grammarous-fixit)
" noremap pci <Plug>(grammarous-close-info-window)

let g:grammarous#hooks = {}
function! g:grammarous#hooks.on_check(errs) abort
    nmap <buffer><C-n> <Plug>(grammarous-move-to-next-error)
    nmap <buffer><C-p> <Plug>(grammarous-move-to-previous-error)
endfunction

function! g:grammarous#hooks.on_reset(errs) abort
    nunmap <buffer><C-n>
    nunmap <buffer><C-p>
endfunction
nmap <leader>g  :GrammarousCheck<CR>
nmap <leader>gx :GrammarousReset<CR>


"==========================================================
"		Comfortable motion
"=========================================================
" disable default keymappings
let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>


