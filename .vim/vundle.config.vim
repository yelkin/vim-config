filetype on             " fix for $? == 1
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Tiled window manager for vim
"Bundle 'spolu/dwm.vim'

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Full path fuzzy file, buffer and MRU file finder for Vim
"   Usage: <c-p> or run :CtrlP
"   Homepage: https://github.com/kien/ctrlp.vim
Bundle 'kien/ctrlp.vim'

"   Usage: it is triggered when you type "</"
"   Homapage: https://github.com/docunext/closetag.vim
Bundle 'docunext/closetag.vim'

" NERDTree file browser for vim
Bundle 'scrooloose/nerdtree'

" Filesystem/buffer explorer plugin
"Bundle 'vim-scripts/LustyExplorer'

" NERDCommenter plugin for commenting blocks of code
"Bundle 'scrooloose/nerdcommenter'

" Better plugin for commenting
Bundle 'vim-scripts/tComment'

"Bundle 'cscope.vim'

" Extend matching for '%' to words(if/fi), tags, etc
Bundle 'matchit.zip'

" Matchit for python
Bundle 'voithos/vim-python-matchit'

" Browse tags in source file in a window
"Bundle 'taglist.vim'
Bundle 'vim-scripts/Tagbar'

" Snippets plugin for vim
Bundle 'snipMate'

" Enclose selection in quotes or brackets
Bundle 'tpope/vim-surround'

" Fugitive provides git integration for vim
Bundle 'tpope/vim-fugitive'

" Mappings for working with quickfix list
Bundle 'tpope/vim-unimpaired'

" Install lucius color scheme
Bundle 'vim-scripts/Lucius'

" Fancy statusline plugin
Bundle 'Lokaltog/vim-powerline'

" Use letter shortcuts along with [count] in motions
" Usage: <leader><leader>{motion}{letter}
"       instead of [count]{motion}
Bundle 'Lokaltog/vim-easymotion'

" Syntastic is a syntax checking plugin that runs files through external syntax checkers and displays any resulting
" errors to the user. 
Bundle 'scrooloose/syntastic'

" Use <c-w>o to zoom in and out of window
Bundle 'vim-scripts/ZoomWin'

" Gundo.vim is a plugin to visualize your Vim undo tree
Bundle 'sjl/gundo.vim'

" See later
" ---------
" Bundle 'ervandew/supertab'
" Bundle 'int3/vim-taglist-plus'
" Bundle 'majutsushi/tagbar'    " - works
" http://sjl.bitbucket.org/gundo.vim/#installation

" Sources:
"   http://mirnazim.org/writings/vim-plugins-i-use/

