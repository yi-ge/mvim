set nocompatible         
set autoindent
filetype plugin indent on

syntax on " 语法高亮
set nowrap " 不自动换行
set smartindent " 智能对其
set number " 显示行号
set nobackup " 不产生备份file
set tabstop=4
set softtabstop=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
map <C-F12> :!ctags -R --c -kinds= p --fields= iaS --extra= q .<CR>
set backspace=indent,eol,start

