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

" Emmet {
    let g:user_emmet_leader_key='<C-Y>'
    let g:user_emmet_settings=webapi#json#decode(join(readfile(expand('~/.vim/snippets/emmet.json')), "\n"))
" }

" Indent Guides {
    let g:indent_guides_auto_colors = 0

    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd
            \ guibg=#00323D
            \ ctermbg=Magenta

    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven
            \ guibg=#073642
            \ ctermbg=DarkMagenta
" }

" Markdown {
    let g:vim_markdown_folding_disabled=1
" }

" NeoComplCache {
    let g:neocomplcache_enable_at_startup=1
    let g:neocomplete#enable_fuzzy_completion=1

    if !exists('g:neocomplete#force_omni_input_patterns')
      let g:neocomplete#force_omni_input_patterns = {}
    endif

    let g:neocomplete#force_omni_input_patterns.python =
        \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" }

" Syntastic {
    let g:syntastic_html_checkers = [ 'jshint' ]
    let g:syntastic_javascript_checkers = [ 'jshint' ]

    " Disable syntax checking by default
    let g:syntastic_mode_map = {
        \ 'active_filetypes': [],
        \ 'mode': 'passive',
        \ 'passive_filetypes': []
    \}
" }
