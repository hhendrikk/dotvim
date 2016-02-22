" NERDTree {
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeIgnore=['\.pyc$', '\~$']
" }

" Powerline {
    python from powerline.vim import setup as powerline_setup
    python powerline_setup()
    python del powerline_setup
" }
