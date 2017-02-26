" Plugin {{{
call plug#begin('/home/kipik/.config/nvim/plugged')
  Plug 'mhartington/oceanic-next'
  Plug 'potatoesmaster/i3-vim-syntax'
  Plug 'rust-lang/rust.vim'
  Plug 'timonv/vim-cargo'
  Plug 'scrooloose/nerdcommenter'
  Plug 'cespare/vim-toml'
  Plug 'bling/vim-airline'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme='oceanicnext'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'keith/tmux.vim'
  Plug 'wakatime/vim-wakatime'
call plug#end()
" }}}

" Functions {{{
fun! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun
" }}}

" Config {{{
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme OceanicNext
set clipboard=unnamedplus
set inccommand=split
let mapleader = "\<Space>"
set listchars=eol:$,trail:¤
command W w !sudo tee % > /dev/null
" }}}

" Map {{{
nnoremap <UP> <NUL>
nnoremap <DOWN> <NUL>
nnoremap <LEFT> :tabprev<CR>
nnoremap <RIGHT> :tabnext<CR>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>
nnoremap <F2> :noh<CR>

nnoremap <leader>a za
nnoremap <leader>l :set list!<CR>
nnoremap gt <C-]>

inoremap jj <Esc>
inoremap <Esc> No!!

" }}}

" Autocmd {{{
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

augroup Base
  autocmd BufWritePre * :call TrimWhitespace()
augroup END
" }}}

" vim: fdm=marker
