"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For FileType settings
autocmd FileType * set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd FileType sh set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType javascript set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType xml set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType python set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType py set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType qml set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd FileType cpp,c set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType java set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd FileType idl set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd FileType make set tabstop=4 | set shiftwidth=4 | set noexpandtab
autocmd FileType html set tabstop=4 | set shiftwidth=4 | set expandtab |set omnifunc=htmlcomplete#CompleteTags
autocmd FileType objc set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType json set tabstop=2 | set shiftwidth=2 | set expandtab

autocmd BufNewFile,BufRead *.mm set filetype=objc
autocmd BufNewFile,BufRead *.mm set tabstop=2 | set shiftwidth=2 | set expandtab

autocmd BufNewFile,BufRead *.md set filetype=markdown
au BufRead,BufEnter *.py set expandtab sts=2

" Auto trim tailing whitespaces when saving file.
autocmd FileType c,cpp,java,javascript,objc,sh,python autocmd BufWritePre <buffer> %s/\s\+$//e

syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256     " 256-color terminal
set lazyredraw   " save performacne
set visualbell   " no sound effects

" For ctags
set tags=.tags;
set autochdir

" For editing
set autoindent
set hlsearch
"set smartcase
set ignorecase

"set virtualedit=onemore
set showmatch " show matching brackets/parenthesis
set wildmenu
set wildmode=list:longest,full
set nowrap
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set foldenable
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Set no backup & swap file.
set nobackup
set nowritebackup
set noswapfile  " Disable swap file.

"set spell
set cursorline
hi cursorline guibg=#333333
hi CursorColumn guibg=#333333

"set backspace compatibility
set nocompatible
set backspace=indent,eol,start

"set title
set ruler
"set showmode
if has('cmdline_info')
    set ruler                   " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                 " show partial commands in status line and
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For tagslist
nnoremap <silent> <F7> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
"let Tlist_Auto_Open=1
let Tlist_Use_SingleClick=1
let g:ctags_statusline=1
let g:tlist_javascript_settings = 'javascript;f:function;c:class;m:method;p:property;v:global'
"cscope database

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set Status line
"set mouse=a
set laststatus=2
set statusline=%F%m%r%h%w\ [%l,%c]\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set number
"set relativenumber  " show line number relative to other lines.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"record the last position the file open
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \   exe "normal g'\"" |
            \ endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show red blocks for whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

highlight ColorColumn ctermbg=LightCyan
set colorcolumn=80

autocmd FileType java set colorcolumn=100
autocmd BufNewFile,BufRead *.mm set colorcolumn=100

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle configuration: https://github.com/VundleVim/Vundle.vim
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype plugin on
" required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" My bundles here:
"
" original repos on GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'wincent/command-t'
"Dash
Plugin 'rizzatti/dash.vim'
"Taglist
Plugin 'taglist.vim'
"Golang
Plugin 'fatih/vim-go'
"CScope
Plugin 'cscope.vim'
"glsl
Plugin 'tikhomirov/vim-glsl'
"json5
Plugin 'GutenYe/json5.vim'

"JavaScript: https://github.com/pangloss/vim-javascript
"Plugin 'pangloss/vim-javascript'
"let g:javascript_plugin_jsdoc = 1
"let g:javascript_plugin_ngdoc = 1
"let g:javascript_plugin_flow = 1
"set foldmethod=syntax

"Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
" Require install: brew install markdown grip
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1

"Java
Plugin 'javacomplete'

"Kotlin
Plugin 'udalov/kotlin-vim'

"YCM -- Disable by default because this slowdown the performance
" https://github.com/ycm-core/YouCompleteMe
"  Install:
"    - brew install cmake macvim python mono go nodejs
"    - cd ~/.vim/bundle/YouCompleteMe
"    - python3 install.py --all
Plugin 'ycm-core/YouCompleteMe'

" File explorer
Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/nerdtree'
" CTRL+n to toogle file tree, and exit when only tree view left on editing.
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Dart
Plugin 'dart-lang/dart-vim-plugin'

" ACP
Plugin 'vim-scripts/AutoComplPop'

" cppcomplete
Plugin 'vim-scripts/cppcomplete'

" Language Server Protocal(LSP) Plugin: https://github.com/neoclide/coc.nvim
"   * Install yarn: `curl --compressed -o- -L https://yarnpkg.com/install.sh | bash`
"   * Install vim-node-rpc ` yarn global add vim-node-rpc`
Plugin 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Chromium vim Plugins
Plugin 'Shouqun/chromium-vim'

" Official GN plugin: https://gn.googlesource.com/gn/+/refs/heads/master/misc/vim/
Plugin 'https://gn.googlesource.com/gn', { 'rtp': 'misc/vim' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom settings:
"Java -- javacomplete
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java map <leader>b :call javacomplete#GoToDefinition()<CR>
" GN & mojom indent
autocmd FileType gn set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType mojom set tabstop=2 | set shiftwidth=2 | set expandtab
" gyp indent
augroup filetype
        au! BufRead,BufNewFile *.gyp    set filetype=python expandtab tabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.gypi   set filetype=python expandtab tabstop=2 shiftwidth=2
        au! BufRead,BufNewFile DEPS     set filetype=python expandtab tabstop=2 shiftwidth=2
augroup END
" Golang:
autocmd BufNewFile,BufRead *.go set filetype=go

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Per directory setting
"au BufRead,BufEnter /task/chromium/src/third_party/WebKit/*.{h,cpp} set expandtab sts=4

if has("gui_running")
  set guifont=Menlo:h16
  set hlsearch
  colorscheme elflord
endif
