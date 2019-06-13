" Plugins
" =======

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" tools
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'junegunn/goyo.vim'
Plug 'posva/vim-vue'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'reedes/vim-wheel'
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


" WRITING
" =======

" Pencil
" ------

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
                            \ | call lexical#init()
augroup END

let g:markdown_syntax_conceal = 0
let g:pencil#conceallevel = 0

