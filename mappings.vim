let mapleader = ","

" Disable Arrows {
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
" }

" Command show TODOs and FIXMEs {
  command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
" }

" Comment Toggle [,cc] {
  map <leader>cc :TComment<CR>
" }
