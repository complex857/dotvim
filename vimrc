set shell=/bin/bash

" bundles
" ----------------------------------------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \     'windows' : 'make -f make_mingw32.mak',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'unix' : 'make -f make_unix.mak',
            \    },
            \ }

NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle 'Align'
NeoBundle 'janson/bufonly.vim'
NeoBundle 'vim-scripts/Decho'
NeoBundle 'rking/ag.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'joonty/vdebug'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'complex857/vim-less'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'vexxor/phpdoc.vim'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'dsummersl/vimunit.git'
NeoBundle 'bling/vim-airline'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'vim-scripts/UltiSnips'
NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-reload'
NeoBundle 'baskerville/bubblegum'

filetype plugin indent on
NeoBundleCheck

" settings
" ---------------------------------------------------------
syntax on
set confirm
set fileformats=unix,dos,mac
set history=1000
set viminfo+=!
set iskeyword+=_,$,@,%,#
set t_Co=256 " 256 colors
set background=dark
set linespace=0
set wildmenu
set wildignorecase
set wildmode=longest:full,list:full
set ruler
set cmdheight=1
set number
set lazyredraw
set hidden
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a
set shortmess=atI
set report=0
set noerrorbells
set fillchars="vert: ,stl: ,stlnc: "
set showmatch
set matchtime=3
set hlsearch
set incsearch
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
set scrolloff=5
set novisualbell
set laststatus=2
set formatoptions=tcrqn
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set nocursorline
set nocursorcolumn
set synmaxcol=300
set expandtab
set completeopt=menuone
set nobackup
set noswapfile
set splitbelow
set splitright
set fileencodings=utf-8,latin2
set encoding=utf-8
set ofu=syntaxcomplete#Complete
set csqf=s-,g-,d-,c-,t-,e-,f-,i-
set ignorecase
set smartcase

set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set foldmethod=syntax
set nofoldenable

set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.luac " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc " Python byte code
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files

set guifont=Terminess\ Powerline\ 12
set guioptions=''

let php_htmlInStrings=1
" let php_sync_method=100
syntax sync minlines=100

source $VIMRUNTIME/mswin.vim


" colors
" ---------------------------------------------------------
colorscheme torte

hi Normal          guibg=#151515
hi LineNr          guibg=#191919    guifg=#808080
hi CursorLineNr    guibg=#191919    guifg=#bbbbbb    gui=none

hi VertSplit       guifg=#808080    guibg=#3A3A3A    gui=none

hi ErrorMsg        guifg=#FF8787    guibg=bg
hi WarningMsg      guifg=#AF87D7
hi MoreMsg         guifg=#5FAF87
hi ModeMsg         guifg=#FFD787

hi SpellBad        ctermfg=210    ctermbg=bg      guifg=#FF8787    guibg=bg
hi SpellCap        ctermfg=174    ctermbg=bg      guifg=#D78787    guibg=bg
hi SpellRare       ctermfg=181    ctermbg=bg      guifg=#D7AFAF    guibg=bg
hi SpellLocal      ctermfg=180    ctermbg=bg      guifg=#D7AF87    guibg=bg

" mappings
" ---------------------------------------------------------
nnoremap <M-1> <Esc>:1tabnext<CR>
nnoremap <m-2> <esc>:2tabnext<cr>
nnoremap <M-3> <Esc>:3tabnext<CR>
nnoremap <M-4> <Esc>:4tabnext<CR>
nnoremap <M-5> <Esc>:5tabnext<CR>
nnoremap <M-6> <Esc>:6tabnext<CR>
nnoremap <M-7> <Esc>:7tabnext<CR>
nnoremap <M-8> <Esc>:8tabnext<CR>
nnoremap <M-9> <Esc>:9tabnext<CR>
nnoremap <M-+> <Esc>:tabnext<CR>
nnoremap <M--> <Esc>:tabprev<CR>
nnoremap <M-t> <Esc>:tabnew<CR>
nnoremap <M-Left> <Esc>:tabprev<CR>
nnoremap <M-Right> <Esc>:tabnext<CR>
nnoremap <M-n> <Esc>:cn<CR>
nnoremap <M-N> <Esc>:cp<CR>
nnoremap <M-b> <Esc>:Breakpoint<CR>
nnoremap <M-l> <Esc>:NERDTreeMirrorToggle<CR>

inoremap <M-1> <Esc>:1tabnext<CR>
inoremap <M-2> <esc>:2tabnext<cr>
inoremap <M-3> <Esc>:3tabnext<CR>
inoremap <M-4> <Esc>:4tabnext<CR>
inoremap <M-5> <Esc>:5tabnext<CR>
inoremap <M-6> <Esc>:6tabnext<CR>
inoremap <M-7> <Esc>:7tabnext<CR>
inoremap <M-8> <Esc>:8tabnext<CR>
inoremap <M-9> <Esc>:9tabnext<CR>
inoremap <M-+> <Esc>:tabnext<CR>
inoremap <M--> <Esc>:tabprev<CR>
inoremap <M-t> <Esc>:tabnew<CR>
inoremap <M-Left> <Esc>:tabprev<CR>
inoremap <M-Right> <Esc>:tabnext<CR>
inoremap <M-n> <Esc>:cn<CR>
inoremap <M-N> <Esc>:cp<CR>
inoremap <M-b> <Esc>:Breakpoint<CR>i
inoremap <M-l> <Esc>:NERDTreeMirrorToggle<CR>

inoremap <M-d> <Esc>:call PhpDocSingle()<CR>i
nnoremap <M-d> :call PhpDocSingle()<CR>
vnoremap <M-d> :call PhpDocRange()<CR>

vnoremap < <gv
vnoremap > >gv

nnoremap <CR> :nohlsearch<cr><cr>

iab <?=     <?php print?><Left><Left>

" autocommands
" ----------------------------------------------------------

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
augroup trailing_whitespace
    au!
    autocmd BufWritePre *.vim,*.py,*.js,*.html,*.php,*.rb,*.less :silent call <SID>StripTrailingWhitespaces()
augroup END

augroup ft_php
    au!
    autocmd FileType php           setlocal omnifunc=phpcomplete#CompletePHP
augroup END
augroup ft_css
    au!
    autocmd FileType css,less      setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType css,less      setlocal iskeyword+=_,$,@,%,#,-,.
augroup END
augroup ft_html
    au!
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType html,markdown setlocal iskeyword+=_,$,@,%,#,-
augroup END
augroup ft_javascript
    au!
    autocmd FileType javascript    setlocal omnifunc=javascriptcomplete#CompleteJS
augroup END
augroup ft_python
    au!
    autocmd FileType python        setlocal omnifunc=pythoncomplete#Complete
augroup END
augroup ft_xml
    au!
    autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType xml           setlocal iskeyword+=_,$,@,%,#,-
augroup END
augroup autosave
    autocmd BufLeave,FocusLost * silent! wall
augroup END

" when we reload, tell vim to restore the cursor to the saved position
augroup JumpCursorOnEdit
 au!
 autocmd BufReadPost *
 \ if expand("<afile>:p:h") !=? $TEMP |
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \ let JumpCursorOnEdit_foo = line("'\"") |
 \ let b:doopenfold = 1 |
 \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
 \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
 \ let b:doopenfold = 2 |
 \ endif |
 \ exe JumpCursorOnEdit_foo |
 \ endif |
 \ endif

" Need to postpone using "zv" until after reading the modelines.
 autocmd BufWinEnter *
 \ if exists("b:doopenfold") |
 \ exe "normal! zv" |
 \ if(b:doopenfold > 1) |
 \ exe "+".1 |
 \ endif |
 \ unlet b:doopenfold |
 \ endif
augroup END

" folds
" ----------------------------------------------------------
function! <SID>foldSpace()
    if (&foldenable !=? "nofoldenable" && foldlevel(line('.')))
        normal! za
    endif
endfunction
nnoremap <silent> <Space> :call <SID>foldSpace()<cr>

" tagbar
" ----------------------------------------------------------
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1

" airline
" ----------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "bubblegum"

" ag.vim
" ----------------------------------------------------------
let g:agprg = "ag -i --column"

" syntastic
" ----------------------------------------------------------
let g:syntastic_javascript_checkers = ['jslint']

" ultisnips
" ----------------------------------------------------------
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ctrlp
" ----------------------------------------------------------
let g:ctrlp_map = '<M-e>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_switch_buffer = 'e'

" nerdtree
" ----------------------------------------------------------
let g:explVertical = 1
let g:explWinSize = 35
let g:winManagerWidth = 35
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'
let g:nerdtree_tabs_open_on_gui_startup = 0
