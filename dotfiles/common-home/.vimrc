" Encoding
" this site (http://vim.wikia.com/wiki/Working_with_Unicode) suggests a block like this:

" if has("multi_byte")
"   if &encoding !~? '^u'
"     if &termencoding == ""
"       let &termencoding = &encoding
"     endif
"     set encoding=utf-8
"   endif
"   setglobal fileencoding=utf-8
"   " Uncomment to have 'bomb' on by default for new files.
"   " Note, this will not apply to the first, empty buffer created at Vim startup.
"   "setglobal bomb
"   set fileencodings=ucs-bom,utf-8,latin1
" endif

" But let's be confident and try to get away with this, for now.
set encoding=utf8

" nowrap means, lines just overflow to the right
" we use vim for coding on a stupid ass big screen and should not write lines
" with more than 100-120 characters anyways. So...
set nowrap

" Show linenumbers
set number

" Enable highlighting of the current line
set cursorline
