" Change <leader> to ","
let mapleader = ","

" Don't show help when <F1> is pressed in insert mode
imap <F1> <nop>

" Toggle vim undo tree browser
map <F1> :GundoToggle<CR>

" Toggle file browser
map <F2> :NERDTreeToggle<CR>

" Toggle tag browser
map <F3> :TagbarToggle<CR>

" Show all matches for the tag and choose one to open in new window
nnoremap <F4> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" Switch to buffer from the list
" nnoremap <F5> :buffers<CR>:buffer<Space>

" Switch to next tab
nnoremap <F6> :tabn<CR>

"Open file under cursor in vertical split
map <F8> :vertical wincmd f<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>ll :set list!<CR>

" tComment settings
" Bind comment command to <leader>c
map <leader>c <c-_><c-_>

" Binding for switch plugin
nnoremap - :Switch<CR>

" Save current session
map <F5> :mksession! ~/.vim_session<CR>
" Load saved session
map <F7> :source ~/.vim_session<CR>

" Mappings for common typos in commands:
command Q q
command W w
command WQ wq
command Wq wq
