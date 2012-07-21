" Map Leader: Reset from \ to ,
let mapleader = ","

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" TABS: Navigation
nmap tp :tabprevious<CR>
nmap tn :tabnext<CR>
nmap te :tabedit<CR>
nmap to :tabonly<CR>

" NERDTree: Open with F2
nmap <F2> :NERDTreeToggle<CR>
nmap <Leader>N :NERDTreeToggle<CR>

" AckVim: <leader>f to search
map <leader>s :Ack<Space>

" Toggle line numbers
:set nonumber
nmap <Leader>n :set number! number?<cr>

" Toggle search highlights
nmap <Leader>h :set hlsearch! hlsearch?<cr>

" Shortcuts for writing the file...
map <Leader>w :w<cr>
imap <Leader>w <esc>:w<cr>

" and quitting
map <Leader>q :qall<cr>
imap <Leader>q <esc>:qall<cr>

" and deleting buffers
map <Leader>d :bd<cr>
imap <Leader>d <esc>:bd<cr>
map <Leader>D :BufOnly<cr>
imap <Leader>D <esc>:BufOnly<cr>

" ExitInsertMode: Alternative keybinding
imap jj <Esc>

" JSLint for current javascript file
:nmap <F4> :w<CR>:make<CR>:cw<CR>

" CtrlP
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>ff :CtrlPClearCache<CR>
noremap <Leader>fb :CtrlPBuffer<CR>

" Copy/Paste
vmap <Leader>c "+yy
map <Leader>v "+p
map <Leader>cf :let @*=expand("%")<CR>
map <Leader>cff :let @*=expand("%:p")<CR>

" RailsVim

map <Leader>a :A<cr>
map <Leader>as :AS<cr>
map <Leader>av :AV<cr>
map <Leader>at :AT<cr>

map <Leader>re :R<cr>
map <Leader>rs :RS<cr>
map <Leader>rv :RV<cr>
map <Leader>rt :RT<cr>

" Fugitive
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gpu :Git pull --rebase<CR>
map <leader>gps :Git push<CR>

nmap <leader>gr :Ggrep
" ,gw for global git serach for word under the cursor (with highlight)
nmap <leader>gw :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
" same in visual mode
vmap <leader>gw y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>


