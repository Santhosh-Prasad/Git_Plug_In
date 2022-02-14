set nocompatible
"filetype plugin indent on
syntax on
set number
set numberwidth=3
"nnoremap <BS> <Left><Del>
"" Vimscript file settings ---------------------- {{{
augroup filetype_vim
                                  autocmd!
                                  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
"""""" tabstops""""{{{
"set tabstop=2
"augroup filetype_sv
"                                  autocmd!
"                                  autocmd FileType verilog_systemverilog setlocal expandtab shiftwidth=2 softtabstop=2
"augroup END
"}}}
"
"{{{ 
filetype plugin on
source ~/.vim/ftplugin/systemverilog.vim
source ~/.vim/ftdetect/systemverilog.vim
"source ~/.vim/indent/systemverilog.vim
source ~/.vim/syntax/systemverilog.vim
""source $VIMRUNTIME/macros/matchit.vim
source ~/.vim/plugin/matchit.vim
"if exists("loaded_verilog_systemverilog_matchit")
"   finish
"endif
"let loaded_verilog_systemverilog_matchit = 1
if exists("loaded_matchit")
let b:match_ignorecase=0
 let b:match_words=
    \ '\<begin\>:\<end\>,' .
    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<if\>:\<else\>,' .
    \ '\<function\>:\<endfunction\>,' .
    \ '`ifdef\>:`else\>:`endif\>,' .
    \ '`ifndef\>:`else\>:`endif\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '\<specify\>:\<endspecify\>'
endif

"}}}
"*****************************************************************************
"****************** setting up my GvimRC ************************************
"*****************************************************************************
"hi comment guifg=     guibg=
"hi normal guifg=     guibg=
"hi cursor guifg=     guibg=
"hi Cursorline guifg=     guibg=
"hi Constant guifg=     guibg=
"hi Special guifg=     guibg=
"hi Comment gui=UnderLine




"*************************************************************************
"set guifont=Courier\ New\ 9
"set relativenumber
set title
set cursorcolumn  "nocuc to disable or cuc to enable
set cursorline  "nocuc to disable or cuc to enable
"autocmd InsertEnter * highlight CursorLine guibg=gray guifg=blue
"autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None
"set bc
"set backspace=indent,eol,start
"map <c-_> xh
let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap _ <c-w>gf
nnoremap <leader>zv :source $MYVIMRC<cr>
inoremap jk <esc>
inoremap 0+ <esc>:w!<cr>
nnoremap 0+ <esc>:w!<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lela<space>
nnoremap H ^
nnoremap L $
iabbrev <buffer> fun function
onoremap p i(                   "use with" any( normal command to take) effect
onoremap l i"
nnoremap <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"inoremap <BS> ^Hx
"nnoremap <BS> ^Hx
"stty erase '^?'
"set t_kb=^V<BS>
colorscheme default
":fixdel
"set backspace=2
"set t_kb=<C-?>
"set
"
set autoindent
set guifont=Courier\ New\ 15
syntax enable
set path+=**
set wildmenu
set mouse=a
set incsearch
set smartcase
set hlsearch
"set nohlsearch
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v]\ [%p%%]\[LEN=%L]
set laststatus=2
set ignorecase
set ruler
set textwidth=800
set showcmd
":echo expand("%")
filetype indent on
set showmatch
set path+=**
"autocmd vimenter * NERDTree
set statusline=
set statusline+=%7*\[%n]                      "buffernr
set statusline+=%1*\ %<%F\                       "File+path
set statusline+=%2*\ %y\                      "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}   "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\          "Encoding2
set statusline+=%4*\ %{&ff}\                   "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\ "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                   "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \          "Modified? Readonly? Top/bot
function! HighlightSearch()
                              if &hls
                                                   return 'H'
                              else
                                                   return ''
                              endif
endfunction
"change terminal background color
hi normal guibg=Black
hi Cursor guibg=Green guifg=Black
hi Comment guifg=Green
highlight Search guibg='Green' guifg=Black
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Red guibg=NONE

hi StatusLine ctermbg=red ctermfg=white
hi user1 ctermbg=brown ctermfg=white
hi user2 ctermbg=yellow ctermfg=white
hi user3 ctermbg=lightblue ctermfg=white
hi user4 ctermbg=lightgreen ctermfg=white
hi user5 ctermbg=green ctermfg=white
hi user6 ctermbg=blue ctermfg=white
hi user7 ctermbg=gray ctermfg=white
hi user8 ctermbg=cyan ctermfg=white
hi user9 ctermbg=red ctermfg=white
hi User1 guifg=#ffdad8 guibg=#880c0e
hi User2 guifg=#000000 guibg=#F4905C
hi User3 guifg=#292b00 guibg=#f4f597
hi User4 guifg=#112605 guibg=#aefe7B
hi User5 guifg=#051d00 guibg=#7dcc7d
hi User7 guifg=#ffffff guibg=#880c0e gui=bold
hi User8 guifg=#ffffff guibg=#5b7fbb
hi User9 guifg=#ffffff guibg=#810085
hi User0 guifg=#ffffff guibg=#094afe
