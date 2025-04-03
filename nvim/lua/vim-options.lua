-- vimwiki path
vim.g.vimwiki_list = {{ path = "~/.vim/wiki/" }}


-- UltiSnip paths
vim.g.UltiSnipsSnippetsDir = "~/.vim/ultiSnips"
vim.g.UltiSnipsSnippetDirectories = { "ultiSnips" }

-- commentary setup
-- vim.cmd [[autocmd FileType xml,html setlocal commentstring=]] -- here %s is the content wrapped by comment strings
vim.cmd [[autocmd FileType sh,python,text setlocal commentstring=#%s]]
vim.cmd [[autocmd FileType tex setlocal commentstring=%%s]]

-- erase all the trailing whitespaces
vim.cmd [[autocmd BufwritePre * %s/\\s\\+$//e]]

vim.opt.cursorline = true
vim.cmd [[highlight CursorLineNr term=bold cterm=underline ctermfg=11 gui=bold guifg=Yellow]]

-- multipleTabs
vim.cmd [[highlight TabLine cterm=bold ctermbg=130 ctermfg=300]]

-- transparency
--vim.cmd [[highlight Normal guibg=NONE ctermbg=NONE]]
--vim.cmd [[highlight Insert guibg=NONE ctermbg=NONE]]
--vim.cmd [[highlight Linenr ctermbg=NONE ctermfg=red]]

-- vim.opt.columns = 110
vim.opt.autoindent = true
vim.opt.cindent = true
-- vim.opt.foldmethod = "indent"
-- use spaces instead of tabs because tabs broke mein Argon
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cmdwinheight = 4
vim.opt.showcmd = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildmenu = true
vim.opt.wildmode = "longest,list,full"
-- swp file dir
vim.opt.directory = "~/.vim/swp"
-- dictinary completion with ctrl-x-k
vim.opt.dictionary = "/usr/share/dictd/wn.index"
--vim.opt.cmdheight = 1
vim.opt.number = true
vim.opt.relativenumber = true
--vim.opt.ruler = true
vim.opt.path:append "**"
vim.opt.cursorlineopt = "number"
vim.opt.history = 500
vim.opt.hidden = true
--vim.opt.noerrorbells = true
vim.opt.spellsuggest = "fast"
-- autocompletion
-- vim.opt.omnifunc = "syntaxcomplete#Complete"
vim.opt.complete:append "kspell"
vim.opt.completeopt = "menuone,longest"
vim.opt.shortmess:append "c"
-- spits right n down unlike the defaults
vim.opt.splitright = true
vim.opt.splitbelow = true

-- no bloody flashes
vim.opt.visualbell = false

vim.opt.encoding = "utf-8"

-- terminal window size
-- vim.opt.termwinsize = "100x100"
-- fast macro
-- vim.opt.lazyredraw = true
-- enable auto-commenting on new line
vim.opt.formatoptions:append "ro"
-- vim.opt.comments:append "b:• | see :h comments | I use this when taking notes using • or"
-- vim.opt.comments:append "b:♯,b:•,b:≌"

-- C-programming macros n snippets
vim.cmd [[autocmd FileType c noremap <S-i> <esc>:w<CR>:!clear && gcc % -o %< && ./%< <CR>]]
vim.cmd [[autocmd FileType c inoremap <leader>f for (i=<++>;i<=<++>;i++){<Enter><++>;<Enter>}<Esc>2kfii]]
vim.cmd [[autocmd FileType c inoremap <leader>si scanf("%d",&);<Esc>F)i]]
vim.cmd [[autocmd FileType c inoremap <leader>sf scanf("%f",&);<Esc>F)i]]
vim.cmd [[autocmd FileType c inoremap <leader>sc scanf("%c",&);<Esc>F)i]]
vim.cmd [[autocmd FileType c inoremap <leader>pd printf("%d",);<Esc>F)i]]
vim.cmd [[autocmd FileType c inoremap <leader>pf printf("%f",);<Esc>F)i]]
vim.cmd [[autocmd FileType c inoremap <leader>ini #include<stdio.h><CR>]]
vim.cmd [[autocmd FileType c inoremap <leader>inl #include<stdlib.h><CR>]]

-- C++ programming macros n snippets
-- vim.cmd [[autocmd FileType cpp noremap <S-i> <esc>:w<CR>:!clear && g++ % -o %< && ./%< <CR>]]
vim.cmd [[autocmd FileType cpp noremap <S-i> <esc>:w<CR>:!clear && make && make run <CR>]]
vim.cmd [[autocmd FileType cpp inoremap <leader>f for (i=0;i<r;i++){<Enter>;<Enter>}<Esc>2kfii]]

-- python macros
vim.cmd [[autocmd FileType python noremap <S-i> <esc> :w <CR> :!clear && python % <CR>]]

-- LaTeX stuff
-- vim.cmd [[autocmd FileType tex noremap <leader>cp <esc>:w<CR>:!pdflatex --shell-escape % && biber %< && pdflatex --shell-escape % <CR><CR>]]

vim.cmd [[autocmd FileType tex nnoremap <leader>cp :!pdflatex -interaction=nonstopmode -file-line-error % && bibtex %:r && pdflatex -interaction=nonstopmode -file-line-error % && pdflatex -interaction=nonstopmode -file-line-error % <CR>]]

-- vim.cmd [[autocmd FileType tex inoremap <leader>ll <esc>:w<CR>:term ++hidden ++close pdflatex --shell-escape % <CR>a]]

vim.cmd [[autocmd FileType tex inoremap <leader>ll <esc>:w<CR>:term ++hidden ++close pdflatex -interaction=nonstopmode -file-line-error main.tex <CR><ESC>]]

vim.cmd [[autocmd FileType tex inoremap <leader>bb <esc>:w<CR>:term ++hidden ++close bibtex main && pdflatex -interaction=nonstopmode -file-line-error main.tex <CR><ESC>]]

-- Vim as a newsboat pager
vim.cmd [[autocmd BufRead /tmp/newsboat-article.* :Goyo 70%]]
vim.cmd [[autocmd BufRead /tmp/newsboat-article.* :set syntax=newsboatPager]]
vim.cmd [[autocmd BufRead,BufNewFile /tmp/newsboat-article.* nnoremap h :qa!<CR>]]
vim.cmd [[autocmd BufRead,BufNewFile /tmp/newsboat-article.* nnoremap o :!urlview % <CR>]]
-- copy youtube url into clipboard
vim.cmd [[autocmd BufRead,BufNewFile /tmp/newsboat-article.* nnoremap <leader>l gg/https<CR>v"+y]]

-- syntax highlighting for notetaking, see notes.vim
vim.cmd [[autocmd BufRead *.notes :set syntax=notes]]

-- masm syntax for asm
vim.cmd [[autocmd BufRead *.asm :set ft=masm]]

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 85
vim.g.netrw_browse_split = 2
vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro"

-- mappings
vim.g.mapleader = ","
vim.keymap.set("n", "<space>", ":")
-- clear highlights after searching
vim.keymap.set("n", "ch", ":noh<CR>")
-- copy all to xclip
vim.keymap.set("n", "gG", "ggVG")
-- fuzzy searching of files in normal mode
--vim.keymap.set("n", "<leader>f", ":find *<CR>")

vim.keymap.set("n", "<Right>", "<NOP>")
vim.keymap.set("n", "<Left>", "<NOP>")
vim.keymap.set("n", "<Up>", "<NOP>")
vim.keymap.set("n", "<Down>", "<NOP>")

vim.keymap.set("i", "ii", "<Esc>")

-- fast split navigation through windows
vim.keymap.set("n", "<c-h>", "<c-w><c-h>")
vim.keymap.set("n", "<c-j>", "<c-w><c-j>")
vim.keymap.set("n", "<c-k>", "<c-w><c-k>")
vim.keymap.set("n", "<c-l>", "<c-w><c-l>")

-- open function definition in another split
vim.keymap.set("n", "gv", ":vsp<CR>:exec 'tag '.expand('<cword>')<CR>")

-- copying/pasting to the system clipboard
vim.keymap.set("x", "Y", '"+y')
vim.keymap.set("i", "<leader>p", '<esc>"+P')

-- Goyo plugin, no distraction reading
vim.keymap.set("n", "<leader>g", ":Goyo 70%<CR>")

-- buffers
vim.keymap.set("n", "<Leader>l", ":ls<CR>")
vim.keymap.set("n", "<Leader>p", ":bp<CR>")
vim.keymap.set("n", "<Leader>n", ":bn<CR>")
vim.keymap.set("n", "<Leader>1", ":1b<CR>")
vim.keymap.set("n", "<Leader>2", ":2b<CR>")
vim.keymap.set("n", "<Leader>3", ":3b<CR>")
vim.keymap.set("n", "<Leader>4", ":4b<CR>")
vim.keymap.set("n", "<Leader>5", ":5b<CR>")
vim.keymap.set("n", "<Leader>6", ":6b<CR>")
vim.keymap.set("n", "<Leader>7", ":7b<CR>")
vim.keymap.set("n", "<Leader>8", ":8b<CR>")
vim.keymap.set("n", "<Leader>9", ":9b<CR>")
vim.keymap.set("n", "<Leader>0", ":10b<CR>")
