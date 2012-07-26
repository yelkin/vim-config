"Open file under cursor in new tab
map <F8> :vertical wincmd f<CR>
"See vim help for word under cursor
map <F3> :h <C-R><C-W><CR>
" View man files in vim window
so $VIMRUNTIME/ftplugin/man.vim
" nmap K :Man <cword><CR>

" Switch to buffer from the list
nnoremap <F5> :buffers<CR>:buffer<Space>

" Switch to next tab
nnoremap <F6> :tabn<CR>

" Upload file to ics virtual machine
map <F4> :!$HOME/.vim/scp-to-ics.sh "%:p"<CR>

" Show all matches for the tag and choose one to open in new window
map <F2> [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
