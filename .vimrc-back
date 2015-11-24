if has("win32")
    set nocompatible
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

call pathogen#infect()
syntax on
filetype plugin indent on

set nu
set tabstop=4
set hlsearch
set incsearch
set shiftwidth=4
set autoindent
set expandtab
set mouse=a
set writebackup

syntax enable
set nocp
set background=dark
colorscheme solarized

" tags settting
" set tags=tags;
" set autochdir

let NERDTreeChristmasTree=1
let NERDTreeMouseMode=2
let NERDTreeHighlightCursorline=0
let NERDCompactSexyComs=1
let NERDSpaceDelims=1
let NERDTreeShowBookmarks=1

"nmap <C-h> <C-w>h
"nmap <C-j> <C-w>j
"nmap <C-k> <C-w>k
"nmap <C-l> <C-w>l

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end  " Auto Exit

" NERDCommand
let mapleader=","

map <F2> :silent! NERDTreeToggle<CR>

" TagbarToggle
map <F3> :silent! TagbarToggle<CR>

" FulCoverageFile
map <F4> :silent! FufCoverageFile<CR>

" NerdTree Book Mark
map <F5> :Bookmark <CR>
let NERDTreeIgnore=['cscope\.*','\.svn','\.git','\.o']

" Cscope
map <F6> :!find . -name '*.php' -o -name '*.c' -o -name '*.h' -o -name '*.cpp' -o -name '*.java' -o -name '*.phtml' -name '*.ini' >cscope.files && cscope -bq<CR>:cs reset<CR>:cs add cscope.out<CR>

" MiniBuffer
map <C-c> :MBEbd<CR>
map <C-n> :MBEbn<CR>
map <C-b> :MBEbp<CR>

"Gundo 
map <leader>h :GundoToggle<CR>

" NERDCommand
let mapleader=","

" Powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'

" Supertab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
set ofu=syntaxcomplete#Complete
set completeopt=menu,longest

" Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopetag 
set csto=1
if filereadable("cscope.out")  
  cs add cscope.out
endif
set cscopeverbose
map <C-g>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>      
map <C-g>g :cs find g <C-R>=expand("<cword>")<CR><CR>:copen<CR>     
map <C-g>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>   
map <C-g>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
map <C-g>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>     
map <C-g>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
map <C-g>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>   
map <C-g>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>   

" 相对行号
set relativenumber
au FocusLost * :set number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-r> :call NumberToggle()<cr>


" 配色方案
if has("gui_running")
    colo solarized
else
    colo desert
endif

"--------------------------------------------------
" Name: solarized
" Git: https://github.com/altercation/vim-colors-solarized.git
"--------------------------------------------------
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_contrast="normal"
let g:solarized_visibility="high"
let g:solarized_underline=1
let g:solarized_italic=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_diffmode="normal"
let g:solarized_hitrail=0
let g:solarized_menu=1

