call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/goyo.vim'
  Plug 'tomasiser/vim-code-dark'
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  "Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()
let g:airline_theme = "codedark"
syntax on
set encoding=utf-8
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number " relativenumber
set termguicolors
colorscheme codedark

set signcolumn=yes
set smartindent
set autoindent
set smarttab
set wildmode=longest,list,full

set splitbelow splitright

set clipboard+=unnamedplus

let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
vmap ++ <plug>NERDTreeToggle
nmap ++ <plug>NERDTreeToggle
nmap <F5> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTree

"autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
      \ "Stage":    "#0ee375",
      \ "Modified": "#d9bf91",
      \ "Renamed":  "#51C9FC",
      \ "Untracked":"#FCE77C",
      \ "Unmerged": "#FC51E6",
      \ "Dirty":    "#FFBD61",
      \ "Clean":    "#87939A",
      \ "Ignored":  "#808081",
      \ }

command! -nargs=0 Prettier :CocCommand prettier.formatFile

"function! IsNERDTreeOpen()
  "return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

""let g:coc_global_extensions = [
      ""\ 'coc-snippets',
      ""\ 'coc-pairs',
      ""\ 'coc-tsserver',
      ""\ 'coc-html',
      ""\ 'coc-prettier',
      ""\ 'coc-json',
      ""\  ]

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

