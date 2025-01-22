set ruler
set hlsearch
syntax on
hi Normal ctermbg=NONE guibg=NONE
autocmd Filetype gitcommit setlocal spell textwidth=75
autocmd Filetype diff setlocal spell textwidth=75
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
set title
au BufNewFile,BufRead *.comp,*.frag,*.vert set filetype=c
