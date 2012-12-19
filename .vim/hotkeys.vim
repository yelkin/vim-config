" =========================
" Disable annoying features
" =========================
" Disable help window
inoremap <F1> <Nop>
nnoremap <F1> <Nop>
vnoremap <F1> <Nop>

" Disable Ex mode
map Q <Nop>
" Disable K looking stuff up
map K <Nop>


" ==============
" F-key mappings
" ==============
" Toggle vim undo tree browser
map <F1> :GundoToggle<CR>

" Toggle file browser
map <F2> :NERDTreeToggle<CR>

" Toggle tag browser
map <F3> :TagbarToggle<CR>

" Show all matches for the tag and choose one to open in new window
nnoremap <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Save current session
map <F5> :mksession! ~/.vim_session<CR>
" Load saved session
map <F7> :source ~/.vim_session<CR>

" =========
" Shortcuts
" =========
" Binding for switch plugin
nnoremap - :Switch<CR>

" Mappings for common typos in commands:
command Q q
command W w
command WQ wq
command Wq wq

let mapleader = ","

" Shortcut to rapidly toggle `set list`
nmap <leader>ll :set list!<CR>
" tComment settings: Bind comment command to <leader>c
map <leader>c <c-_><c-_>

map <leader>co "+y
map <leader>pa "+p
map <leader>ca gg"+yG
map <leader>rc :e ~/.vimrc<CR>
map <leader>ho :e ~/.vim/hotkeys.vim<CR>
map <leader>vu :e ~/.vim/vundle.config.vim<CR>
map <leader>gs :Gstatus<CR>
map <leader>w <C-w>w
map <leader>qq <esc>:q<cr>
map <leader>le <esc>:let @/=""<cr>
map <leader>vv <c-w>v<c-w>l

nnoremap <tab> %
vnoremap <tab> %
