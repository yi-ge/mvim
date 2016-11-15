set nocompatible " Use Vim defaults instead of 100% vi compatibility        
set autoindent

syntax on " 语法高亮
set nowrap " 不自动换行
set smartindent " 智能对其
set number " 显示行号
set nobackup " 不产生备份file
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set ruler
set encoding=utf-8
set mouse=a

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/unite.vim'
Plugin 'mbbill/fencview'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'Lokaltog/vim-powerline'

call vundle#end()            " required
filetype plugin indent on
map <C-F12> :!ctags -R --c -kinds= p --fields= iaS --extra= q .<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" YCM settings
set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips setting
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim-colors
colorscheme neodark

" ctags
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
