filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch
set number

" Visual aid
fun! Toggle80Line()
  if &colorcolumn == 0
    set colorcolumn=80
  else
    set colorcolumn=0
  endif
endfun

nnoremap <C-l> :call Toggle80Line()<CR>

" Forzar cambios a .py
set nosmarttab

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Maps
let mapleader = ' '
noremap <Leader><Leader> :let @/=''<cr>

" Trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

call plug#begin("~/.vim/plugged")
  " VIMTEX
  "Plug 'lervag/vimtex'
  " NERDTree
  Plug 'scrooloose/nerdTree', {'on': 'NERDTreeToggle'}
  nmap <C-n> :NERDTreeToggle<CR>
  " Markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
  runtime .vim/markdown_prev.vim
  nmap <C-b> :MarkdownPreview<CR>
call plug#end()
