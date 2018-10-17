" Plugins
" =======

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" tools
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'posva/vim-vue'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-fugitive'
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

" ALE
" ---

" to save battery life we don't want to lint as we type
" (ALE will lint on save by default)
let g:ale_lint_on_text_changed = 'never'

" Lightline
" ---------

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

" NERDTree
" --------

" show hidden files by default
let NERDTreeShowHidden = 1

" Pencil
" ------

" set default wrapping mode in pencil to soft
let g:pencil#wrapModeDefault = 'soft'

" Initialize pencil when working with prose files
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

