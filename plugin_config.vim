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

" TernJS {
    "enable keyboard shortcuts
    let g:tern_map_keys=1
    "show argument hints
    let g:tern_show_argument_hints='on_hold'
    let g:tern_map_prefix = '<leader>'
" }

" SnipMate {
    "to prevent clash with youcompleteme, change snippet trigger
    imap <C-s> <esc>a<Plug>snipMateNextOrTrigger
    smap <C-s> <Plug>snipMateNextOrTrigger
" }
