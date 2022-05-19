set ruler
set hlsearch
syntax on
colorscheme ron
autocmd Filetype gitcommit setlocal spell textwidth=75
autocmd Filetype diff setlocal spell textwidth=75
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
set title
