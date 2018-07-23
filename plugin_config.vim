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

" YouCompleteMe {
 let g:ycm_min_num_of_chars_for_completion = 4
 let g:ycm_min_num_identifier_candidate_chars = 4
 let g:ycm_enable_diagnostic_highlighting = 0
 " Don't show YCM's preview window [ I find it really annoying ]
 set completeopt-=preview
 let g:ycm_add_preview_to_completeopt = 0
" }

" Ale {
 let g:ale_sign_error = '●' " Less aggressive than the default '>>'
 let g:ale_sign_warning = '.'
 let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
 let g:ale_linters = {
       \   'javascript': ['standard'],
       \}
" }
