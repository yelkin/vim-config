" File: .vimrc
" Author: Pavel Yelkin

" Common
set nocompatible
set autoread

set backup
set backupdir=/tmp
set directory=/tmp


" Editor
set undolevels=100
set backspace=indent,eol,start whichwrap+=<,>,[,]

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Search parameters
set ignorecase
set incsearch
set smartcase
set hlsearch        " Highlight all search matches
set gdefault        " Apply substitutions globally on lines

set autoindent
set cindent

set nofoldenable

set splitright
set splitbelow

"Syntax highlighting
syntax on

" UI
set relativenumber  " Make line numbers relative to current line
set foldcolumn=0
set showtabline=1

" Mouse
set mouse=n         " Allow mouse in normal mode (resize windows, scrolling).

" Status line config
set laststatus=2
set statusline=%{fugitive#statusline()}\ %<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

set scrolljump=7

set novisualbell        " выключаем бибиканье и мигание
set t_vb=
set wildmenu
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*




" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r

" Set text width to wrap text with 'gq'
set textwidth=180
autocmd bufreadpre *.rst setlocal textwidth=80

" =======================
" Vundle plugins config
" =======================
"Load Vundle
filetype on             " fix for $? == 1
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

Plugin 'wincent/command-t'
nmap <C-p> :CommandT<CR>

"   Usage: it is triggered when you type "</"
"   Homapage: https://github.com/docunext/closetag.vim
Plugin 'docunext/closetag.vim'

" NERDTree file browser for vim
Plugin 'scrooloose/nerdtree'

" Better plugin for commenting
Plugin 'vim-scripts/tComment'

" Extend matching for '%' to words(if/fi), tags, etc
Plugin 'matchit.zip'

" Matchit for python
Plugin 'voithos/vim-python-matchit'

" Browse tags in source file in a window
" Bundle 'taglist.vim'
" Significantly slows down vim when browsing large file
Plugin 'vim-scripts/Tagbar'

" Snippets plugin for vim
"Bundle 'snipMate'

" Enclose selection in quotes or brackets
Plugin 'tpope/vim-surround'

" Fugitive provides git integration for vim
Plugin 'tpope/vim-fugitive'

" Mappings for working with quickfix list
Plugin 'tpope/vim-unimpaired'

" Install lucius color scheme
Plugin 'vim-scripts/Lucius'

" Fancy statusline plugin
Plugin 'Lokaltog/vim-powerline'

" Use letter shortcuts along with [count] in motions
" Usage: <leader><leader>{motion}{letter}
"       instead of [count]{motion}
"Bundle 'Lokaltog/vim-easymotion'

" Better indentation tool for bash scripts
Plugin 'vim-scripts/Super-Shell-Indent'

" Support ansible's dialect of YAML
Plugin 'chase/vim-ansible-yaml'

" ReSructuredText plugin
Plugin 'Rykka/riv.vim'

" Pep8 indentation for python
Plugin 'hynek/vim-python-pep8-indent'

let NERDTreeIgnore = ['\.pyc$']

filetype plugin indent on


" Set color scheme 
set t_Co=256
colo lucius
LuciusDark

" let delimitMate_expand_cr = 1
set backspace=indent,eol,start

" My functions

" Cut trailing spaces on write
autocmd BufWritePre *.py :%s/\s\+$//e

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,sh,spec,rst autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" modify selected text using combining diacritics
function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

" command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
" command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
" command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
" command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

" ================
" HOTKEYS
" ================

" Disable annoying features

" Disable help window
inoremap <F1> <Nop>
nnoremap <F1> <Nop>
vnoremap <F1> <Nop>

" Disable Ex mode
map Q <Nop>
" Disable K looking stuff up
"map K <Nop>


" Toggle file browser
map <F2> :NERDTreeToggle<CR>
" Toggle tag browser
map <F3> :TagbarToggle<CR>


" Mappings for common typos in commands:
command Q q
command W w
command WQ wq
command Wq wq

let mapleader = ","

" Shortcut to rapidly toggle `set list`
nmap <leader>ll :set list!<CR>
" tComment settings: Bind comment command to <leader>c
map <leader>cc <c-_><c-_>

map <leader>co "+y
map <leader>pa "+p
map <leader>le <esc>:let @/=""<cr>


map —ë `
map –π q
map —Ü w
map —É e
map –∫ r
map –µ t
map –Ω y
map –≥ u
map —à i
map —â o
map –∑ p
map —Ö [
map —ä ]
map —Ñ a
map —ã s
map –≤ d
map –∞ f
map –ø g
map —Ä h
map –æ j
map –ª k
map –¥ l
map –∂ ;
map —ç '
map —è z
map —á x
map —Å c
map –º v
map –∏ b
map —Ç n
map —å m
map –± ,
map —é .
map –Å ~
map –ô Q
map –¶ W
map –£ E
map –ö R
map –ï T
map –ù Y
map –ì U
map –® I
map –© O
map –ó P
map –• {
map –™ }
map –§ A
map –´ S
map –í D
map –ê F
map –ü G
map –† H
map –û J
map –õ K
map –î L
map –ñ :
map –≠ "
map –Ø Z
map –ß X
map –° C
map –ú V
map –ò B
map –¢ N
map –¨ M
map –ë <
map –Æ >
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >



