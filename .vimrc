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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For ctags
set tags=tags;
set autochdir

" For editing
set autoindent
set hlsearch
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
