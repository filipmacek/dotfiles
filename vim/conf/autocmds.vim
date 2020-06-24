" Set spelling for markdown files
autocmd FileType markdown setlocal spell

" Set dictionary var when in markdown files
autocmd FileType markdown execute 'setlocal dict+=/usr/share/dict/british-english'
