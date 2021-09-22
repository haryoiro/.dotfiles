call plug#begin('~/.config/nvim/plugged')
  Plug 'morhetz/gruvbox'
  Plug 'pangloss/vim-javascript'
  Plug 'itchyny/lightline.vim'
  Plug 'itchyny/vim-gitbranch'
  Plug 'szw/vim-maximizer'
  Plug 'sbdchd/neoformat'
  Plug 'kassio/neoterm'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install -all'}
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
call plug#end()

" morhetz/gruvbox
colorscheme gruvbox

let g:lightline = {
  \ 'acive' : {
  \   'left': [ ['mode', 'paste' ],
  \             ['gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name'
  \ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
  \ 'colorscheme': 'gruvbox',
  \ }

set completeopt=menuone,noinsert,noselect
set mouse=a
set splitright
set splitbelow
set expandtab
set tabstop=2
set shiftwidth=2
set nu
set ignorecase
set smartcase 
set incsearch
set diffopt+=vertical
set hidden
set nobackup
set nowritebackup
set noswapfile
set cmdheight=2
set shortmess+=c
set signcolumn=yes
set updatetime=750
filetype plugin indent on
let mapleader = " "
if (has("termguicolors"))
	set termguicolors
endif
let g:newrw_banner=0
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript']

" szw/vim-maximizer
nnoremap <leader>m :MaximizerToggle!<CR>

" kassio/neoterm
let g:neoterm_default_mod = 'belowright'
let g:neoterm_size = 10
let g:neoterm_autoinsert = 1
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" sbdchd/neoformat
nnoremap <leader>F :NeoFormat prettier<CR>


" junegunn/fzf.vim
nnoremap <leader><space> :GFiles<CR>
nnoremap <leader>ff :Rg<CR>
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
  \ "find .-path '*/\.*' -prune -o -print \| sed 'id;s:^.,:;'"
  \ fzf#wrap({'dir': expand('%:p:h')}))
if has('nvim')
  au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
  au! FileType fzf tunmap <buffer> <Esc>
endif

" tpope/vim-fugitive
nnoremap <leader>gg :G<CR>

" neovim/nvim-lspconfig and nvim-lua/completion-nvim
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }

nnoremap <silent> gda   <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gh    <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gH    <cmd>lua vim.lsp.code_action()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
