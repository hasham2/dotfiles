let mapleader = ","
set nu
syntax on
set lbr
colorscheme pablo
set expandtab
set tabstop=2
set nowrap

let g:speckyBannerKey        = "spb"
let g:speckyQuoteSwitcherKey = "sp'"
let g:speckyRunRdocKey       = "spr"
let g:speckySpecSwitcherKey  = "spx"
let g:speckyRunSpecKey       = "sps"
let g:speckyRunRdocCmd       = "fri -L -f plain"
let g:speckyWindowType       = 2

set nocompatible          " We're running Vim, not Vi!
filetype plugin indent on " Enable filetype-specific indenting and plugins

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END
