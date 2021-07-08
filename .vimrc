set encoding=utf-8
scriptencoding utf-8

set fileencoding=utf-8              " 保存時の文字コード
set fileencodings=utf-8,euc-jp,cp932   " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac                    " 改行コードの自動判別. 左側が優先される

set noswapfile						" swpファイルの生成を無効化
set nowritebackup					" バックアップを無効化
set nobackup						" バックアップを無効化
set virtualedit=block				" 短径選択で文字がなくても右へ進める
set backspace=indent,eol,start		" 挿入モードでバックスペースを使い削除できる
set ambiwidth=double				" 全角文字専用の設定
set wildmenu						" wildmenuオプションを有効

"検索設定"
set ignorecase						" 大文字小文字を区別しない
set smartcase						" 小文字で検索すると大文字と小文字を無視して検索
set wrapscan						" 検索がファイル末尾まで進んだらファイル先頭から再び検索
set incsearch						" インクリメンタル検索
set hlsearch						" 検索結果をハイライト表示

"表示設定"
"set noerrorbells					" ビープ音を鳴らさない
set shellslash						" Windowsでパスの区切り文字をスラッシュとして扱う
set showmatch matchtime=1			" 対応するカッコやブレースを表示
set cinoptions+=:0					" インデント方法の変更
set cmdheight=2						" メッセージ表示欄を二行確保
set cursorline 						" カーソルラインをハイライト
set laststatus=2					" ステータス業を常に表示
set showcmd							" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set display=lastline				" 省略されずに表示
set history=1000					" 履歴を10000件保存する
hi Comment ctermfg=3				" コメントの色を水色
set expandtab						" 入力モードでTbaキー押下字に半角スペースを挿入
set shiftwidth=2					" インデント幅
set softtabstop=2					" タブキー押下時に挿入される文字幅を指定
set tabstop=2						" ファイル内にあるタブ文字の表示幅
set guioptions-=T					" ツールバーを非表示にする
set guioptions-=a					" やんくしたときにクリップボードに入る
set guioptions-=m					" メニューバーを非表示にする
set guioptions+=R					" 右スクロールバーを非表示
set showmatch						" 対応するカッコを強調表示
set smartindent						" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する。
set nofoldenable					" 検索にマッチ下行以外を折りたたむ機能
set clipboard=unnamed,autoselect	" やんくでクリップボードにコピー
" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
set nrformats=						" すべての数を10進数として扱う
set whichwrap=b,s,h,l,<,>,[,],~		" 行をまたいで移動
set mouse=a							" バッファスクロール

if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"Basic
Plug 'preservim/nerdtree'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'blueyed/vim-diminactive'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'stsewd/fzf-checkout.vim'
Plug 'mileszs/ack.vim'

"Color Scheme"
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'ryanoasis/vim-devicons'

"auto-linting
Plug 'dense-analysis/ale'

" automatically clear search highlights after you move your cursor
Plug 'haya14busa/is.vim'

" Files
Plug 'Shougo/unite.vim'
Plug 'Shougo/neomru.vim'


call plug#end()


colorscheme gruvbox
highlight Normal ctermbg=0
set termguicolors
set background=dark

let loaded_matchparen = 1
let mapleader = " "

let g:ale_fixers = {
      \'javascript': ['eslint'],
      \'json': ['prettier'],
      \'typescript': ['eslint'],
      \'typescriptreact': ['eslint'],
      \'markdown': ['prettier'],
      \'css': ['stylelint'],
      \'scss': ['stylelint']}

let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

let g:indent_guides_enable_on_vim_startup = 1
" 挿入モードで開始
let g:unite_enable_start_insert=1

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

" Ctrl + e NERDTreeToggle
nnoremap <silent><C-e> :NERDTreeToggle<CR>

noremap <S-h> 0
noremap <S-l> $

nnoremap p ]p
nnoremap P ]P

" 矢印キー無効化！Vimきょうせいギプス！
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" 最後のカーソル位置を復元する
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif


" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""

" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
