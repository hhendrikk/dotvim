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

" Omnisharp {
    let g:OmniSharp_server_path = '/home/hendrik/.omnisharp.http-linux-x64/run'
    let g:syntastic_cs_checkers = ['code_checker']
    let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim


    set updatetime=500

    sign define OmniSharpCodeActions text=💡

    augroup OSCountCodeActions
      autocmd!
      autocmd FileType cs set signcolumn=yes
      autocmd CursorHold *.cs call OSCountCodeActions()
    augroup END

    function! OSCountCodeActions() abort
      if OmniSharp#CountCodeActions({-> execute('sign unplace 99')})
        let l = getpos('.')[1]
        let f = expand('%:p')
        execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
      endif
    endfunction

" }

" Syntastic {
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
" }
