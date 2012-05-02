
"-------------------------------------------------------------------------
"                           vim plugin manager
"-------------------------------------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Tell Vim to ignore BundleCommand until vundle supports it
com! -nargs=? BundleCommand

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" non github repos
"     Bundle 'git://git.wincent.com/command-t.git'
" vim-scripts repos on github
"     Bundle 'OmniCppComplete'
" original repos on github
"     Bundle 'majutsushi/tagbar'
" NOTE: comments after Bundle command are not allowed..

" Navigation {
" https://github.com/vim-scripts/indent-motion
Bundle 'indent-motion'
" https://github.com/Lokaltog/vim-easymotion
Bundle 'Lokaltog/vim-easymotion'
" https://github.com/wincent/Command-T
Bundle 'wincent/Command-T'
" https://github.com/scrooloose/nerdtree
Bundle 'scrooloose/nerdtree'
"}

" UI Additions {
" https://github.com/Lokaltog/vim-powerline
Bundle 'Lokaltog/vim-powerline'
" https://github.com/Rykka/ColorV
Bundle 'Rykka/ColorV'
"}

" Commands {
" https://github.com/tpope/vim-surround
Bundle 'tpope/vim-surround'
" https://github.com/vim-scripts/VisIncr
Bundle 'VisIncr'
"}

" Auto Complete {
" https://github.com/vim-scripts/OmniCppComplete
Bundle 'OmniCppComplete'
" https://github.com/vim-scripts/cppcomplete
"Bundle 'cppcomplete'
" https://github.com/vim-scripts/c.vim
"Bundle 'c.vim'
" https://github.com/vim-scripts/javacomplete
Bundle 'javacomplete'
"}

" Language Additions {
" https://github.com/pangloss/vim-javascript
Bundle 'pangloss/vim-javascript'
" https://github.com/hallison/vim-markdown
Bundle 'hallison/vim-markdown'
" https://github.com/mkitt/markdown-preview.vim
Bundle 'mkitt/markdown-preview.vim'
" https://github.com/sukima/xmledit
Bundle 'sukima/xmledit'
" https://github.com/vim-scripts/gtk-vim-syntax
Bundle 'gtk-vim-syntax'
"}

" MatchIt {
" https://github.com/vim-scripts/matchit.zip
Bundle 'matchit.zip'
" https://github.com/Townk/vim-autoclose
Bundle 'Townk/vim-autoclose'
"}

" Programming {
" https://github.com/majutsushi/tagbar
Bundle 'majutsushi/tagbar'
" https://github.com/Twinside/vim-cuteErrorMarker
Bundle 'Twinside/vim-cuteErrorMarker'
" https://github.com/ervandew/supertab
Bundle 'ervandew/supertab'
" https://github.com/scrooloose/nerdcommenter
Bundle 'scrooloose/nerdcommenter'
" Install dependencies for vim-snipmate {
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'snipmate-snippets'
"}
" https://github.com/garbas/vim-snipmate
Bundle 'garbas/vim-snipmate'
" https://github.com/mileszs/ack.vim
Bundle 'mileszs/ack.vim'
"}


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

"-------------------------------------------------------------------------
"                           basic setting
"-------------------------------------------------------------------------

set nocompatible                    " Use Vim defaults (much better!)
set autoread                        " read open files again when changed outside Vim
set autowrite                       " write a modified buffer on each :next , ...
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc
set bs=2		                    " allow backspacing over everything in insert mode
set history=50		                " keep 50 lines of command line history

"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" indent setting{
set smartindent
set autoindent                      " always set autoindenting on
set copyindent                      " copy the previous indentation on autoindenting
"}

" TAB setting {
set shiftwidth=4                    " let a tab look like (n) spaces for indent
set tabstop=4                       " let a tab act as (n) spaces
set softtabstop=4                   " use a tab and some spaces for indent when editing
set smarttab
set expandtab                       " when tapstop is set, expand a tab to (n) spaces 
au FileType Makefile set noexpandtab
"}
" backup setting {
set backup
set backupext=.bak
set patchmode=.orig
set backupdir=~/backup/recover
"}

" disable error sound {
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"}

" status line {
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
"}

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction

"}

set pastetoggle=<MiddleMouse>
"set complete+=k                     " <ctrl-p> or <ctrl-n> complete a word . ref: help complete
                                    " detfault complete  is .,w,b,u,t,i,
set complete=.,w,b,u,t,k             " Better complete options to speed it up, ref: help cpt 
set dictionary+=~/.vim/bundle/c.vim/c-support/wordlists

set incsearch                       " do incremental searching
set ruler                           " show the cursor position all the time
set cursorline
set nowrap                          " do not wrap lines
set showcmd                         " display incomplete commands
set showmode                        " show current mode
set showmatch                       " Cursor shows matching ) and }
set matchtime=5                     " How many tenths of a second to blink
" wildmenu: ignore these extensions
set wildignore+=*.orig,*.org,*.bak,*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class,*.bmp,*.jpg,*.jpeg
set wildmenu                        " command-line completion in an enhanced mode
set wildchar=<TAB>                  " start wild expansion in the command line using <TAB>
set backspace=indent,eol,start      " backspacing over everything in insert mode
set mouse=a 
set popt=left:8pc,right:3pc         " print options
"set whichwrap=<,>                  " 設定當在每行最前或最後時, 允許那一個鍵可以前一行移動
"set list
"set listchars=tab:,eol:            "用特殊符號表示tab與換行

filetype on                         " Enable filetype detection
filetype indent on                  " Enable filetype-specific indenting
filetype plugin on                  " Enable filetype-specific plugins

"-------------------------------------------------------------------------
"                           color setting
"-------------------------------------------------------------------------
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if has("syntax") && &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set t_Co=256
  colo rabit
"  colo wombat256
endif

"-------------------------------------------------------------------------
"                          encoding setting
"-------------------------------------------------------------------------
" 'encoding'      Encoding 代表的是 vim 內部使用的編碼。
"                 一般而言 Unicode 的環境請用 utf-8 。
" 
" 'fileencoding'  這個與 encoding 不一樣，只有在讀寫檔案的時候影響。
"                 setglobal fileencoding 應該會變成預設值，set fileencoding
"                 也可以，要全部使用 big5 就設成
"                     set fileencoding=big5
"                 否則可以不設，會以 encoding 為預設值。
" 
" 'fileencodings' 所有可能的 encodings，開檔時候會一一測試使用，如果沒有錯誤便
"                 使 fileencoding 等於該 encoding。他會自動偵測字碼。免手動轉換。

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
    set encoding=utf-8
    set termencoding=big5
endfun

fun! UTF8()
    set encoding=utf-8
    set termencoding=big5
    set fileencoding=utf-8
    set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
    set encoding=big5
    set fileencoding=big5
endfunction

"--------------------------------------------------------------------------
"                    function and keymap
"-------------------------------------------------------------------------
" set leader to ,
let mapleader=","
let g:mapleader=","

" open the error console
map <leader>cc :botright cope<CR>
" move to next error
map <leader>] :cn<CR>
" move to the prev error
map <leader>[ :cp<CR>

" --- move around splits {
" Window Movement
" move to and maximize the left split
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split
nmap <c-l> <c-w>l<c-w><bar>
" move to and maximize the below split
nmap <C-J> <C-W>j<C-W>_
" move to and maximize the above split
nmap <C-K> <C-W>k<C-W>_
" Previous Window
nmap <silent> <C-p> :wincmd p<CR>

" Equal Size Windows
nmap <silent> <leader>w= :wincmd =<CR>

" Window Splitting
nmap <silent> <leader>sh :split<CR>
nmap <silent> <leader>sv :vsplit<CR>
nmap <silent> <leader>sc :close<CR>
set wmw=10 " set the min width of a window to 0 so we can maximize others
set wh=10
set wmh=5 " set the min height of a window to 0 so we can maximize others
" }

" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h

" move around tabs. conflict with the original screen top/bottom
" comment them out if you want the original H/L
" go to prev tab
nmap <S-H> gT
" go to next tab
nmap <S-L> gt

" new tab
nmap <S-T> :tabnew<CR>
" close tab
nmap <S-C> :tabclose<CR> 

" These mappings will reselect the block after shifting,
" so you'll just have to select a block, press < or > as many times as you like
vnoremap < <gv
vnoremap > >gv

" Transposing lines 整行上下移動
nmap <c-a><down> :<c-u>move .+1<cr>
nmap <c-a><up> :<c-u>move .-2<cr>

imap <c-a><down> <c-o>:<C-u>move .+1<cr>
imap <c-a><up> <c-o>:<C-u>move .-2<cr>

vmap <c-a><down> :move '>+1<CR>gv
vmap <c-a><up> :move '<-2<CR>gv

" Don't use Ex mode, use Q for formatting
map Q gq

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" :cd. change working directory to that of the current file
cmap cd. lcd %:p:h

"--------------------------------------------------------------------------
"                    for programming 
"-------------------------------------------------------------------------

" for devhelp
function! DevHelpCurrentWord()
    let s:word = expand("<cword>")
    let s:cmd = "silent !devhelp -s ".s:word."&"
    "echo s:cmd
    execute s:cmd
    redraw!
endfunction

nmap <ESC>h :call DevHelpCurrentWord()<cr>

function! ExecCtags()
    exec "silent !ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    redraw!
endfunction

map <silent> <F10> :call ExecCtags()<CR>

" ,g generates the header guard
map <leader>g :call IncludeGuard()<CR>
fun! IncludeGuard()
   let basename = substitute(bufname(""), '.*/', '', '')
   let guard = '_' . substitute(toupper(basename), '\.', '_', "H")
   call append(0, "#ifndef " . guard)
   call append(1, "#define " . guard)
   call append( line("$"), "#endif // for #ifndef " . guard)
endfun

" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
              \ if &omnifunc == "" |
              \ setlocal omnifunc=syntaxcomplete#Complete |
              \ endif
endif

set cot-=preview "disable doc preview in omnicomplete

"--------------------------------------------------------------------------
"                    vim plugin setting
"-------------------------------------------------------------------------

" --- Tagbar
nnoremap <silent> <F12> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" --- SuperTab
let g:SuperTabDefaultCompletionType = "context"

" --- EasyMotion
"let g:EasyMotion_leader_key = '<Leader>m' " default is <Leader>w
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment

" --- Vundle
" install plugins
nmap <Leader>bi :BundleInstall<CR>
" update plugins
nmap <Leader>bu :BundleInstall!<CR>
" clean unusased plugins
nmap <Leader>bc :BundleClean<CR>

" --- Markdown Preview
function! PreviewMarkdown()
    let s:word = g:MarkdownPreviewTMP.expand("%:r").".html"
    let s:cmd = "silent !firefox ".s:word."&"
    "echo s:cmd
    execute s:cmd
    redraw!
endfunction

nmap <Leader>md :MDP<CR>
nmap <Leader>mc :CMDP<CR>
nmap <Leader>mv :call PreviewMarkdown()<CR>

" --- NERDTree
nnoremap <silent> <F11> :NERDTreeToggle<CR>
