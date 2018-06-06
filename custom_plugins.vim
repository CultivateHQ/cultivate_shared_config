" Plugins
" =======

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" tools
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'


" Functions
" =========

function! LightLineGitGutter()
  if exists('*GitGutterGetHunkSummary')
    let [ added, modified, removed ] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', added, modified, removed)
  endif
  return ''
endfunction


" Plugin options
" ==============

" to save battery life we don't want to lint as we type
" (ALE will lint on save by default)
let g:ale_lint_on_text_changed = 'never'

" Lightline options
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'],
    \             [ 'gitgutter', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ], ['percent'] ]
    \ },
    \ 'component_function': {
    \   'gitgutter': 'LightLineGitGutter',
    \ },
    \ }

