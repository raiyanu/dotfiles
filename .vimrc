" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Add the Gruvbox theme plugin
Plug 'morhetz/gruvbox'


Plug 'scrooloose/nerdtree' 
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'cocopon/iceberg.vim'
Plug 'voldikss/vim-floaterm'



" Initialize plugin system
call plug#end()

" Enable line numbers
set number

" Set the theme to Gruvbox
syntax enable
set background=dark
colorscheme  iceberg 

" Optional: additional configurations for better experience
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
filetype plugin on

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>   " Toggle NERDTree with Ctrl+n

" FZF settings
set rtp+=~/.fzf
nnoremap <C-p> :Files<CR>       " Open FZF with Ctrl+p
noremap <silent> <F12> :FloatermToggle<CR>
tnoremap <silent> <F12> <C-\><C-n>:FloatermToggle<CR>




" Open a new floating terminal
nnoremap <silent> <F7> :FloatermNew<CR>

" Navigate between floating terminals
nnoremap <silent> <F8> :FloatermNext<CR>
nnoremap <silent> <F9> :FloatermPrev<CR>

" Close the current floating terminal
nnoremap <silent> <F10> :FloatermKill<CR>

" Floating terminal configuration
" let g:floaterm_width = 0.9
" let g:floaterm_height = 0.9
" let g:floaterm_wintype = 'float'
" let g:floaterm_position = 'center'
" let g:floaterm_autoinsert = 1
" let g:floaterm_title = ''
