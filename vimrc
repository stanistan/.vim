execute pathogen#infect()
call pathogen#helptags()

set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set number

" NERDTree
autocmd vimenter * NERDTree

" IndentLine
let g:indentLine_char = '¦'

" When over 90 chars, make the col red.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%91v.\+/

" Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=ghmarkdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

let g:CommandTTraverseSCM = 'pwd'

" Vimwiki is markdown
let g:vimwiki_list = [
            \ {'path': '~/vimwiki/', 'syntax': 'ghmarkdown', 'ext': '.md'}
            \ ]

" vim:ts=2:sw=2:et
