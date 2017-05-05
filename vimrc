set shell=/bin/bash

" bundles
" ----------------------------------------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
            \ 'build' : {
            \     'windows' : 'make -f make_mingw32.mak',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'unix' : 'make -f make_unix.mak',
            \    },
            \ }

" NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle 'complex857/vim-less'
NeoBundle 'complex857/vim-bufonly'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-jdaddy'
NeoBundle 'Align'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tomtom/tlib_vim'
" NeoBundle 'joonty/vdebug'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jistr/vim-nerdtree-tabs'
" NeoBundle 'Rican7/php-doc-modded'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'xolox/vim-misc'
NeoBundle 'baskerville/bubblegum'
NeoBundle 'othree/html5.vim'
NeoBundle 'elzr/vim-json'
" NeoBundle 'vim-scripts/Decho'
NeoBundle 'vim-scripts/UltiSnips'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'valloric/MatchTagAlways'
NeoBundle 'mileszs/ack.vim'
" NeoBundle '2072/PHP-Indenting-for-VIm'
" NeoBundle 'eapache/auto-pairs'
" NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'kchmck/vim-coffee-script'


call neobundle#end()
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
set visualbell
set noerrorbells
set t_vb=
set laststatus=2
set formatoptions=tcrqn
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nowrap
set nocursorline
set nocursorcolumn
set synmaxcol=1000
set noexpandtab
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
set smarttab

set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set foldmethod=syntax
set nofoldenable

set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.luac " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc " Python byte code
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files

set guifont=Terminus\ (TTF):h16
set guioptions=

" let php_htmlInStrings=1
" let php_sync_method=100
syntax sync minlines=100

" source $VIMRUNTIME/mswin.vim

" colors
" ---------------------------------------------------------
colorscheme torte

hi Normal          guibg=#191919
hi LineNr          guibg=#202020    guifg=#808080
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
nnoremap <D-1> <Esc>:1tabnext<CR>
nnoremap <D-2> <esc>:2tabnext<cr>
nnoremap <D-3> <Esc>:3tabnext<CR>
nnoremap <D-4> <Esc>:4tabnext<CR>
nnoremap <D-5> <Esc>:5tabnext<CR>
nnoremap <D-6> <Esc>:6tabnext<CR>
nnoremap <D-7> <Esc>:7tabnext<CR>
nnoremap <D-8> <Esc>:8tabnext<CR>
nnoremap <D-9> <Esc>:9tabnext<CR>
nnoremap <D-+> <Esc>:tabnext<CR>
nnoremap <D--> <Esc>:tabprev<CR>
nnoremap <D-t> <Esc>:tabnew<CR>
nnoremap <D-Left> <Esc>:tabprev<CR>
nnoremap <D-Right> <Esc>:tabnext<CR>
nnoremap <D-n> <Esc>:cn<CR>
nnoremap <D-N> <Esc>:cp<CR>
nnoremap <D-b> <Esc>:Breakpoint<CR>
nnoremap <D-l> <Esc>:NERDTreeMirrorToggle<CR>
nnoremap <leader>l <Esc>:NERDTreeMirrorToggle<CR>
nnoremap <D-l> <Esc>:NERDTreeMirrorToggle<CR>

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
inoremap <D-1> <Esc>:1tabnext<CR>
inoremap <D-2> <esc>:2tabnext<cr>
inoremap <D-3> <Esc>:3tabnext<CR>
inoremap <D-4> <Esc>:4tabnext<CR>
inoremap <D-5> <Esc>:5tabnext<CR>
inoremap <D-6> <Esc>:6tabnext<CR>
inoremap <D-7> <Esc>:7tabnext<CR>
inoremap <D-8> <Esc>:8tabnext<CR>
inoremap <D-9> <Esc>:9tabnext<CR>
inoremap <D-+> <Esc>:tabnext<CR>
inoremap <D--> <Esc>:tabprev<CR>
inoremap <D-t> <Esc>:tabnew<CR>
inoremap <D-Left> <Esc>:tabprev<CR>
inoremap <D-Right> <Esc>:tabnext<CR>
inoremap <D-n> <Esc>:cn<CR>
inoremap <D-N> <Esc>:cp<CR>
inoremap <D-b> <Esc>:Breakpoint<CR>i
inoremap <D-l> <Esc>:NERDTreeMirrorToggle<CR>
inoremap <leader>l <Esc>:NERDTreeMirrorToggle<CR>
inoremap <D-l> <Esc>:NERDTreeMirrorToggle<CR>

" inoremap <M-d> <Esc>:call PhpDocSingle()<CR>i
" nnoremap <M-d> :call PhpDocSingle()<CR>
" vnoremap <M-d> :call PhpDocRange()<CR>

vnoremap < <gv
vnoremap > >gv

" make cursor position stationary when yanking in virtual mode
vnoremap <expr>y "my\"" . v:register . "y`y"
vnoremap <expr>Y "my\"" . v:register . "Y`y"

nnoremap <CR> :nohlsearch<cr><cr>

command! -nargs=0 RehashCtags :call <SID>rehash_ctags()
" iab <?= <?php print?><Left><Left>
iab <// </<C-X><C-O>

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

function! <SID>rehash_ctags()
	" echo 'ctags...'
	" silent! exec "!ctags -R --append=yes --exclude='*.json' ."
	echo 'coffeetags...'
	silent! exec "!coffeetags -R --tag-relative -a -f tags"
	echo "tags ready"
endfunction

augroup trailing_whitespace
    au!
    autocmd BufWritePre *.vim,*.py,*.js,*.html,*.php,*.rb,*.less,*.c,*.h,*.ctp,*.tpl,*.css,*.haml,*.coffee,*.ejs :silent call <SID>StripTrailingWhitespaces()
augroup END

augroup ft_tpl
    au!
    autocmd FileType smarty   setlocal ft=html
augroup END

augroup ft_php
    au!
    autocmd FileType php      setlocal omnifunc=phpcomplete#CompletePHP
    autocmd FileType php      setlocal iskeyword-=-
    autocmd FileType php      setlocal foldmethod=indent
    autocmd FileType php      setlocal foldnestmax=2
    autocmd FileType php      setlocal foldlevel=1
augroup END
augroup ft_css
    au!
    autocmd FileType css,less      setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType css,less      setlocal iskeyword+=_,$,@,%,#,-,.
    autocmd FileType css,less      syn sync minlines=200
augroup END
augroup ft_html
    au!
    autocmd FileType tpl,html,markdown,haml setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType tpl,html,markdown,haml setlocal iskeyword+=_,$,@,%,#,-
    autocmd FileType tpl,html,markdown,haml let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
    autocmd FileType tpl,html,markdown,haml let b:delimitMate_quotes = "\" '"
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
augroup ft_rb
    au!
    autocmd FileType rb,ruby setlocal sw=2
    autocmd FileType rb,ruby setlocal sts=2
    autocmd FileType rb,ruby setlocal ts=2
    autocmd FileType rb,ruby setlocal expandtab
augroup END
augroup ft_coffee
    au!
    autocmd FileType coffee setlocal sw=2
    autocmd FileType coffee setlocal sts=2
    autocmd FileType coffee setlocal ts=2
    autocmd FileType coffee setlocal expandtab
augroup END
augroup autosave
    au!
    autocmd BufLeave,FocusLost * silent! wall
augroup END

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

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
let g:airline#extensions#whitespace#mixed_indent_algo = 1

" ag.vim
" ----------------------------------------------------------
let g:agprg = "ag -i --column"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" syntastic
" ----------------------------------------------------------
let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_php_checkers = ['php', 'phpmd', ]
let g:syntastic_java_checkers = []
let g:syntastic_php_phpmd_post_args = '~/.vim/phpmd_rules.xml'

" ultisnips
" ----------------------------------------------------------
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ctrlp
" ----------------------------------------------------------
let g:ctrlp_map = '<D-e>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_switch_buffer = 'e'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" nerdtree
" ----------------------------------------------------------
let g:explVertical = 1
let g:explWinSize = 35
let g:winManagerWidth = 35
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'
let g:nerdtree_tabs_open_on_gui_startup = 0

" gitgutter
" ----------------------------------------------------------
let g:gitgutter_enabled = 0
