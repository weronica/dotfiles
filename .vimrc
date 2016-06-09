call plug#begin()
call plug#end()

syntax enable		    " enable syntax processing
set tabstop=4       	" number of visual spaces per TAB
set softtabstop=4   	" number of spaces in tab when editing
set expandtab       	" tabs are spaces
set number              " show line numbers
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

colorscheme colorsbox-stblue

"   Trailing whitespace
fun! <SID>StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

augroup whitespace
  autocmd!
  autocmd BufWritePre * :call <SID>StripTrailingWhitespace()
augroup END

nnoremap <leader>sv :source $MYVIMRC<CR>
