let mapleader = ","

" Tsuquyomi {
  autocmd FileType typescript setlocal completeopt-=menu
  autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
  autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)
  autocmd FileType typescript nmap <buffer> <F12> <Plug>(TsuquyomiDefinition)
"}

" Disable Arrows {
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
" }
