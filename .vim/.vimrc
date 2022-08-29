"                                +-+-+-+-+-+
"                                |v|i|m|r|c|
"                                +-+-+-+-+-+
"
set nocompatible

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn','\%81v',100)

filetype plugin on
filetype indent on

"vimwiki path
let g:vimwiki_list = [{'path': '~/.vim/wiki/'}]

set background=dark
colorscheme seti
"syntax on
syntax enable
highlight Folded ctermbg=black ctermfg=green
"""let g:python_highlight_all = 1
"""let g:python_highlight_space_errors=0
"let g:python_highlight_builtins=0
"let g:python_highlight_builtin_objs=0
"let g:python_highlight_builtin_types=0
"let g:python_highlight_builtin_funcs=0
"let g:python_highlight_builtin_funcs_kwarg=0
"let g:python_highlight_exceptions=1
"let g:python_highlight_string_formatting=1
"let g:python_highlight_string_format=1
"let g:python_highlight_string_templates=1
"let g:python_highlight_doctests=1
"let g:python_highlight_func_calls=1
"let g:python_highlight_class_vars=1
"let g:python_highlight_operators=1
"let g:python_slow_sync=1

"erase all the trailing whitespaces
autocmd BufwritePre * %s/\s\+$//e

set cursorline
hi CursorLineNr term=bold cterm=underline ctermfg=11 gui=bold guifg=Yellow
"let g:airline_powerline_fonts = 1
"let g:airline_symbols_ascii = 1
set laststatus=2
"set statusline=
"set statusline=%3*lelouch
"set statusline+=%6*%{(mode()=='n')?'\ \ Normal\ ':''}
"set statusline+=%5*%{(mode()=='i')?'\ \ Insert\ ':''}
"set statusline+=%7*%{(mode()=='v')?'\ \ Visual\ ':''}
"set statusline+=%7*%{(mode()=='V')?'\ \ --Visual\ ':''}
"set statusline+=%2*%{(mode()=='R')?'\ \ Replace\ ':''}
"set statusline+=%1*%y%*%*
"set statusline+=%8*>>>
"set statusline+=%5*%-40f
"set statusline+=%=
"set statusline+=%4*[%L]%*
"set statusline+=%4*%((%l,%c)%)\
"set statusline+=%P\

hi User1 ctermfg=red
hi User2 ctermfg=black		   ctermbg=lightmagenta
hi User3 ctermfg=black         ctermbg=green
hi User4 ctermfg=black         ctermbg=blue
hi User5 ctermfg=black         ctermbg=grey
hi User6 ctermfg=black         ctermbg=yellow
hi User7 ctermfg=white		   ctermbg=darkblue
hi User8 ctermfg=darkblue	   ctermbg=white

"multipleTabs
highlight TabLine cterm=bold ctermbg=130 ctermfg=300

"transparency
hi Normal guibg=NONE ctermbg=NONE
hi Insert guibg=NONE ctermbg=NONE
hi Linenr ctermbg=NONE ctermfg=red

"set columns=110
set autoindent
set cindent
set foldmethod=indent
set shiftwidth=4
set tabstop=4
set cmdwinheight=4
set showcmd
set hlsearch
set incsearch
set wildmenu
set wildmode=longest,list,full
"swp file dir
set directory=~/.vim/swp

set cmdheight=1
set number relativenumber
set ruler
set path+=**
set cursorlineopt=number
set history=500
set hidden
set noerrorbells
"autocompletion
"set omnifunc=syntaxcomplete#Complete
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
"spits right n down unlike the defaults
set splitright splitbelow

"no bloody flashes
set novisualbell

set encoding=utf-8

"fast macro
"set lazyredraw

"C-programming macros n snippets
autocmd FileType c noremap <S-i> <esc>:w<CR>:!clear && gcc % -o %< && ./%< <CR>
autocmd FileType c inoremap <leader>f for (i=0;i<r;i++){<Enter>;<Enter>}<Esc>2kfii
autocmd FileType c inoremap <leader>si scanf("%d",&);<Esc>F)i
autocmd FileType c inoremap <leader>sf scanf("%f",&);<Esc>F)i
autocmd FileType c inoremap <leader>sc scanf("%c",&);<Esc>F)i
autocmd FileType c inoremap <leader>pd printf("%d",);<Esc>F)i
autocmd FileType c inoremap <leader>pf printf("%f",);<Esc>F)i
autocmd FileType c inoremap <leader>ini #include<stdio.h><CR>
autocmd FileType c inoremap <leader>inl #include<stdlib.h><CR>

"LaTeX stuff
autocmd FileType tex noremap <leader>cp <esc>:w<CR>:!pdflatex % && biber %< && pdflatex % <CR><CR>
autocmd FileType tex inoremap <leader>ll <esc>:w<CR>:term ++hidden ++close pdflatex % <CR>a

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_winsize = 80
let g:netrw_browse_split = 2
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

"function and key-bind to toggle transparency
let t:is_transparent = 0
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>

"mappings
let mapleader = ','
map <Right> <NOP>
map <Left> <NOP>
map <Up> <NOP>
map <Down> <NOP>

inore ii <esc>

"fast split navigation through windows
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

"copying/pasting to the system clipboard
vnoremap <C-c> "+y
map <C-p> "+P

" Goyo plugin, no distraction reading
noremap <leader>g :Goyo 70%<CR>

" Vim as a newsboat pager
autocmd BufRead /tmp/newsboat-article.* :Goyo 70%
autocmd BufRead /tmp/newsboat-article.* :set syntax=newsboatPager
autocmd BufRead,BufNewFile /tmp/newsboat-article.* nnoremap h :qa!<CR>
autocmd BufRead,BufNewFile /tmp/newsboat-article.* nnoremap o :!urlview % <CR>

