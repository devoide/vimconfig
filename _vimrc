" Disable compatibility with vi which can cause unexpected issues.
set nocompatible


" Enable type file detection. Vim will be able to try detect the type file in use.
filetype on

set nolinebreak

" Enable plugins and load plugins for detected file types.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlight on.
syntax on

" Add numbers to each line
set relativenumber

" Allows to copy paste
set clipboard=unnamedplus

" Set shift width to 4 spaces.
set shiftwidth=2

" Set tab width to 4 columns.
set tabstop=2

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=14

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd


" horizontal line
"set cursorline highlight cursorline 

""vertical line
"set cursorcolumn

" sets color
"highlight CursorLine ctermbg=red

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Nerdtree shortcut
map <F2> :NERDTreeToggle<CR>

" html linter

let g:ale_linters = {
    \ 'html': ['htmlhint'],
    \ }


let g:ale_linters = {
  \ 'python': ['pylint'], 
  \ }

let g:ale_linters = {
  \ 'sql': ['C:\Users\mocci\AppData\Roaming\npm\node_modules\sql-lint'],
  \ }




" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('C:/users/mocci/vimfiles/plugged')

 Plug 'dense-analysis/ale'

 Plug 'preservim/nerdtree'

call plug#end()



" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
