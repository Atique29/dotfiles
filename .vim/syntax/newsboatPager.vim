" Vim syntex file
" Language: Plain text
" Maintainer: Atique B. Zakir

syn match URL '.https://.*$'
syn match FEED '^Feed'
syn match AUTHOR '^Author'
syn match TITLE '^Title.*$'
syn match INTEGERS '\d'

hi FEED               ctermfg=yellow
hi AUTHOR  cterm=bold ctermfg=yellow
hi TITLE   cterm=bold ctermfg=green
hi INTEGERS           ctermfg=yellow
hi URL     cterm=bold ctermfg=cyan
