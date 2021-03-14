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

"" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"" VUNDLE END

