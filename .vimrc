"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For FileType settings
autocmd FileType * set tabstop=4 | set shiftwidth=4
autocmd FileType sh set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType javascript set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType xml set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType python set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType qml set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd FileType cpp,c set tabstop=2 | set shiftwidth=2 | set expandtab
autocmd FileType java set tabstop=4 | set shiftwidth=4 | set expandtab
autocmd FileType make set tabstop=4 | set shiftwidth=4 | set noexpandtab
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

autocmd BufNewFile,BufRead *.md set filetype=markdown

syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For ctags
set tags=.tags;
set autochdir

" For editing
set autoindent
set hlsearch
set ignorecase
set smartcase
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

"set spell
set cursorline
hi cursorline guibg=#333333
hi CursorColumn guibg=#333333


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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"record the last position the file open
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \   exe "normal g'\"" |
            \ endif


augroup filetype
        au! BufRead,BufNewFile *.gyp    set filetype=python expandtab tabstop=2 shiftwidth=2
        au! BufRead,BufNewFile *.gypi   set filetype=python expandtab tabstop=2 shiftwidth=2
        au! BufRead,BufNewFile DEPS     set filetype=python expandtab tabstop=2 shiftwidth=2
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show red blocks for whitespace
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

highlight ColorColumn ctermbg=0
set colorcolumn=80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle configuration: https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

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
" non-GitHub repos
Plugin 'git://git.wincent.com/command-t.git'
"Dash
Plugin 'rizzatti/dash.vim'
"Taglist
Plugin 'taglist.vim'
"Golang
Plugin 'fatih/vim-go'
"CScope
Plugin 'cscope.vim'
"JavaScript: https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'
"YCM -- Disable by default because this slowdown the performance
"Bundle 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = '/Users/liushouqun/Code/Browser/chromiumsrc/src/tools/vim/chromium.ycm_extra_conf.py'
"Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

Bundle 'uarun/vim-protobuf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""
" Per dir config
"auto bufread /path/to/* so /path/to/.vimrc
"au BufRead,BufEnter /path/to/*.{cc,h,py} set expandtab sts=2
"au BufRead,BufEnter /path/to/WebKit/* set expandtab sts=4
