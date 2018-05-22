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
    let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__$', '\.git', 'node_modules']
    let NERDTreeShowHidden=1
" }

" CtrlP {
    let g:ctrlp_max_files=0
    let g:ctrlp_max_depth=40
    let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.(git))$'
    let g:ctrlp_show_hidden = 1
" }


" Emmet {
    let g:user_emmet_leader_key='<C-Y>'
    let g:user_emmet_settings=webapi#json#decode(join(readfile(expand('~/.vim/snippets/emmet.json')), "\n"))
" }
