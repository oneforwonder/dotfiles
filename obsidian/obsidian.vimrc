" Yank to system clipboard
set clipboard=unnamed

" Key Mappings -----------------------------------------------------------------

" Go to start and end of line more easily
noremap S ^
noremap L $

" Use visible (wrapped) lines not file lines
map k gk
map j gj

" Make yank consistent with delete and change
nnoremap Y y$

" Add new line above or below without going into insert mode
map <S-CR> O<ESC>
map <CR> o<ESC>

" Put 'move-right' on the Dvorak home row
map s l

" Dvorak for jj, makes getting out of insert easy
imap hh <Esc>
