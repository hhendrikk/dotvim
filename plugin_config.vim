" Lightline{

    set laststatus=2

    let g:lightline = {
        \ 'colorscheme': 'powerline',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'fugitive', 'filename'] ]
        \ },
        \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '', 'right': '' },
        \ 'component': {
        \   'fugitive': '%{exists("*fugitive#head")&&strlen(fugitive#head())?'.
        \               '"\ue0a0 ".fugitive#head():""}'
        \ },
        \ 'component_visible_condition': {
        \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
        \ },
        \ }

" }

" NERDTree {
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__$']
" }

" Fugitive {

    if isdirectory(expand("~/.vim/plugged/vim-fugitive/"))
        nnoremap <silent> <leader>gs :Gstatus<CR>
        nnoremap <silent> <leader>gd :Gdiff<CR>
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gb :Gblame<CR>
        nnoremap <silent> <leader>gl :Glog<CR>
        nnoremap <silent> <leader>gp :Git push<CR>
        nnoremap <silent> <leader>gr :Gread<CR>
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>ge :Gedit<CR>
        " Mnemonic _i_nteractive
        nnoremap <silent> <leader>gi :Git add -p %<CR>
        nnoremap <silent> <leader>gg :SignifyToggle<CR>
    endif

"}

" CtrlP {
    let g:ctrlp_max_files=0
    let g:ctrlp_max_depth=40
" }

" Vim-GO {
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_list_type = "quickfix"
" }

" SimpleAutoComplPop {
autocmd FileType go call sacp#enableForThisBuffer({ "matches": [
                \ { '=~': '\v[a-zA-Z]{4}$' , 'feedkeys': "\<C-x>\<C-n>"} ,
                \ { '=~': '\.$'            , 'feedkeys': "\<C-x>\<C-o>", "ignoreCompletionMode":1} ,
                \ ]
                \ })
" }
