set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'cohama/lexima.vim'
Plugin 'alvan/vim-closetag'
Plugin 'Valloric/MatchTagAlways'

call vundle#end()
filetype plugin indent on
"alvan/vim-closetagのオプション
let g:closetag_filenames = '*.html, *.php'
let g:closetag_filetypes = 'html,php'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
"Valloric/MatchTagAlwaysのオプション
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'php' : 1,
  \}

set encoding=utf-8
scriptencoding utf-8
set clipboard=unnamed,autoselect
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決
set nocompatible
set fenc=utf-8 "文字コードをUFT-8に設定
set nobackup " バックアップファイルを作らない
set noswapfile " スワップファイルを作らない
set autoread " 編集中のファイルが変更されたら自動で読み直す
set hidden " バッファが編集中でもその他のファイルを開けるように
set showcmd " 入力中のコマンドをステータスに表示する
" 見た目系
set number " 行番号を表示
set virtualedit=onemore " 行末の1文字先までカーソルを移動できるように
set smartindent " インデントはスマートインデント
set visualbell " ビープ音を可視化
set showmatch " 括弧入力時の対応する括弧を表示
set laststatus=2 " ステータスラインを常に表示
set wildmode=list:longest " コマンドラインの補完
set filetype=html
" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
inoremap jj <Esc> 
" insertでjjの入力でESCとする
" Tab系
set list listchars=tab:\▸\- " 不可視文字を可視化(タブが「▸-」と表示される)
set expandtab " Tab文字を半角スペースにする
set tabstop=2 " 行頭以外のTab文字の表示幅（スペースいくつ分）
set shiftwidth=2 " 行頭でのTab文字の表示幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent " 改行時に前の行のインデントを継続する
" 検索系
set ignorecase " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch " 検索文字列入力時に順次対象文字列にヒットさせる
set wrapscan " 検索時に最後まで行ったら最初に戻る
set hlsearch " 検索語をハイライト表示
nmap <Esc><Esc> :nohlsearch<CR><Esc> " ESC連打でハイライト解除
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,] " 行頭行末の左右移動で行をまたぐ
set scrolloff=8 " 上下8行の視界を確保
set sidescrolloff=16 " 左右スクロール時の視界を確保
set sidescroll=1 " 左右スクロールは一文字づつ行う
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する
set gdefault "置換時defaultでgオプション

"コマンド補完
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

" ファイル処理関連の設定
set confirm    " 保存されていないファイルがあるときは終了前に保存確認

"マウスの有効化
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

