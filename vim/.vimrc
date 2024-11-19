" === === === === === === === === ===
" === === General settings == === ===
" === === === === === === === === ===
" Numbered lines
set number

" 256 Color standard
set t_Co=256

" bg to dark. Makes the colorscheme change some values
set bg=dark

" No tabs, four spaces ftw
set tabstop=4
set shiftwidth=4
set expandtab

" Set highlighting of search, and increamental search
set hlsearch
set is
set shortmess-=S

" === === === === === === === === ===
" === === Colorshceme === === === ===
" === === === === === === === === ===
" Set colorscheme
" colorscheme monokai

let g:gruvbox_invert_selection=0
colorscheme gruvbox

" Make bg transparent
hi Normal guibg=NONE ctermbg=NONE

" === === === === === === === === ===
" === === Bindings and remaps === ===
" === === === === === === === === ===

" SETUP LEADER KEY
let mapleader=" "

" Intento de \"gcc\" xd
" nmap <silent> gcc :^i//<C-C><CR>

" Go back to netrw
nmap <silent> <C-B> :Ex<CR>

" List buffers
nmap <leader>ls :ls<CR>:b<space>

" Disable highlighing
nmap <silent> ,, :nohl<CR>

" source ~/fzf.vim
" nmap <leader>pf :FZF<CR>
