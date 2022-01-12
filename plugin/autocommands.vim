augroup filetypes
    au!
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable comment new line
    au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END
