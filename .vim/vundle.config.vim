filetype on             " fix for $? == 1
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Full path fuzzy file, buffer and MRU file finder for Vim
"   Usage: <c-p> or run :CtrlP
"   Homepage: https://github.com/kien/ctrlp.vim
Bundle 'kien/ctrlp.vim'

"   Usage: it is triggered when you type "</"
"   Homapage: https://github.com/docunext/closetag.vim
Bundle 'docunext/closetag.vim'

" Vim like WriteRoom
"   Usage: :VimroomToggle
"   Homepage: http://projects.mikewest.org/vimroom/
Bundle 'mikewest/vimroom'

" NERDTree file browser for vim
Bundle 'scrooloose/nerdtree'

" NERDCommenter plugin for commenting blocks of code
Bundle 'scrooloose/nerdcommenter'

"Bundle 'cscope.vim'

" Extend matching for '%' to words(if/fi), tags, etc
Bundle 'matchit.zip'

" Browse tags in source file in a window
Bundle 'taglist.vim'

" Snippets plugin for vim
Bundle 'snipMate'

" Enclose selection in quotes or brackets
Bundle 'tpope/vim-surround'

" Wombat color scheme
Bundle 'CSApprox'
Bundle 'vim-scripts/Wombat'

" See later
" ---------
" Bundle 'ervandew/supertab'
" Bundle 'int3/vim-taglist-plus'
" Bundle 'majutsushi/tagbar'    " - works
" http://sjl.bitbucket.org/gundo.vim/#installation

" Sources:
"   http://mirnazim.org/writings/vim-plugins-i-use/

