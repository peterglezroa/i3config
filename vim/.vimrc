filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
call plug#begin("~/.vim/plugged")
" VIMTEXT
Plug 'lervag/vimtex'
" NERDTree
Plug 'scrooloose/nerdTree', {'on': 'NERDTreeToggle'}
nmap <C-n> :NERDTreeToggle<CR>
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
runtime .vim/markdown_prev.vim
nmap <C-m> :MarkdownPreview<CR>
call plug#end()
