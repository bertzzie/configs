set nocompatible
filetype off      " required for Vundle

" set the runtime path to init Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle. Required.
Plugin 'gmarik/Vundle.vim'

" Themes
Plugin 'endel/vim-github-colorscheme'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'tomasr/molokai'

" Languages
Plugin 'fatih/vim-go'
Plugin 'groenewege/vim-less'
Plugin 'othree/html5.vim'
Plugin 'JulesWang/css.vim' " Because Yoshimite's default vim is 7.3
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'

" Features
Plugin 'tpope/vim-surround'
Plugin 'Shougo/unite.vim'    "vimfiler depends on this.
Plugin 'Shougo/vimfiler.vim'

" Vundle end. All plugins must be added
" before the following line.
call vundle#end()

filetype plugin indent on " required for Vundle

" Set indent spcace to 4
" and auto expand tab to space
set tabstop=4
set shiftwidth=4
set expandtab

set number    " Show line number
syntax on     " Syntax highlighting ON
color Molokai " Color theme: Molokai

" AutoReload .vimrc
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC " }
