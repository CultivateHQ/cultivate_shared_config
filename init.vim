" Set options
" ===========

set expandtab
set foldlevel=99
set foldmethod=indent
set list
set listchars=tab:▸\ ,eol:¬
set nowrap
set number
set shiftwidth=2
set splitbelow
set splitright
set tabstop=2

"use system clipboard when yanking/putting
set clipboard=unnamedplus

"allow local nvimrc files and allow us of :autocmd, shell and write commands
set exrc
set secure


" Key binds
" =========

"Remap leader to SPACE
let mapleader="\<SPACE>"


"open project file drawer
nmap <leader>b :NERDTreeToggle<CR>

"open fuzzy search
nmap <leader>f :FZF<CR>

"toggle code folding
nmap <leader>l za

"run tests in the current file (or last file if not in a test file)
nmap <leader>tf :TestFile<CR>
"run the whole test suite
nmap <leader>ta :TestSuite<CR>

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>

" copy the realtive path to the current file to the clipboard
nmap cp :let @+ = expand("%")<CR>


" Functions
" =========

" Function to source only if file exists
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

" Run a given vim command on the results of alt from a given path.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction


" Plugins
" =======

call plug#begin('~/.local/share/nvim/plugged')

" languages
Plug 'elixir-lang/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'


" tools
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'janko-m/vim-test'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Custom
call SourceIfExists("~/.config/nvim/custom_plugins.vim")

call plug#end()


" Plugin options
" ==============

" use the neovim terminal to run tests
let test#strategy = "neovim"


" Colorscheme
" ===========
call SourceIfExists("~/.config/nvim/custom_color.vim")


" Overrides - Don't like any of the options in this file? Override them!
" =========
call SourceIfExists("~/.config/nvim/custom_overrides.vim")

