"Open file under cursor in new tab
map <F8> :vertical wincmd f<CR>
"See vim help for word under cursor
map <F3> :h <C-R><C-W><CR>
" View man files in vim window
so $VIMRUNTIME/ftplugin/man.vim
nmap K :Man <cword><CR>

"Move between open windows 
map  <C-h> <Esc><C-w><Left>     " One window left
map  <C-j> <Esc><C-w><Down>     " One window down
map  <C-k> <Esc><C-w><Up>       " One window up
map  <C-l> <Esc><C-w><Right>    " One window right
