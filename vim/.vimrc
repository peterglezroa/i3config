set tabstop=4
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
call plug#begin("~/.vim/plugged")
" Vim latex
Plug 'lervag/vimtex'
" NERD tree
Plug 'scrooloose/nerdTree', {'on': 'NERDTreeToggle'}
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
nmap <C-n> :NERDTreeToggle<CR>
call plug#end()
