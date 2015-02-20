set nocompatible
filetype off

" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" See http://www.vimawesome.com for a repository that shows you 
" exactly what to enter for Vundle to find the plugin.  That
" rocks!

Plugin 'gmarik/Vundle.vim'

Plugin 'mattn/calendar-vim'
Plugin 'docunext/closetag.vim'
Plugin 'msanders/cocoa.vim'
Plugin 'matchit.zip'
Plugin 'scrooloose/syntastic'
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'gregsexton/VimCalc'
Plugin 'tpope/vim-classpath'
Plugin 'javacomplete'
Plugin 'godlygeek/tabular'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()

set nocp
set nobackup
set ignorecase
set smartcase
set incsearch
set hlsearch
set ruler
set number
set cursorline
filetype on
filetype plugin on
filetype plugin indent on

" Put swap files in a separate directory, so we don't 
" clutter up the filesystem
set directory=~/.vim/swapfiles//


set background=light
colorscheme solarized
syntax on

behave mswin


if has("gui")
    set lines=60
    set columns=120
endif

set wrap
set linebreak
set backspace=eol,indent,start
set guioptions+=b 
set guioptions-=T
set guitablabel=%t


set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

set diffopt=filler,iwhite

" Set up folding
"set foldmethod=indent
"et foldnestmax=5


let Tlist_Inc_WinWidth = 1
let Tlist_Show_Menu = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1

map <C-F12> :TlistToggle<CR>
imap <C-F12> <Esc><C-F12>

" Diff options
"set diffopt=iwhite
"hi DiffAdd      guibg=#ddffdd
"hi DiffDelete   guibg=#ffdddd
"hi DiffChange   guibg=#ddddff
"hi DiffText     guibg=#9999ff 
command! Difforig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" Omnicomplete
set completeopt=menu
inoremap <C-Space> <C-x><C-o>

autocmd FileType html :set omnifunc=htmlcomplete#CompleteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java set completefunc=javacomplete#CompleteParamsInfo
autocmd FileType java set cin
"autocmd FileType c set omnifunc=ccomplete#Complete

autocmd BufRead,BufNewFile *.txt setfiletype text
autocmd FileType text set wrap linebreak textwidth=0 
autocmd FileType text inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a



autocmd! Filetype html source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
autocmd! Filetype php source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
autocmd! Filetype xml source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
autocmd! Filetype javascript source ~/.vim/bundle/closetag.vim/plugin/closetag.vim
autocmd! Filetype svg source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

autocmd! BufReadPost,BufRead,BufNew *.ipy,*.ipyw set filetype=python
autocmd! BufReadPost,BufRead,BufNew *.ps1 set filetype=ps1
autocmd! BufReadPre,BufRead,BufNew *.bas,*.cls,*.frm set filetype=vb
autocmd! BufReadPre,BufRead,BufNew *.docx,*.xlsx,*.pptx set filetype=zip
autocmd! BufReadPre,BufRead,BufNew *.drl set filetype=drools


" vimsettings files
autocmd! BufRead,BufNew .vimsettings set filetype=vim


" Helps when syntax highlight looks cheap -- you can figure out what Vim
" thinks the symbol is.
"map <C-S-F11> :echo synIDattr(synID(line("."), col("."), 1), "name")<cr>
map <C-S-F11> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Turn on all the syntax highlighting you can get
let java_highlight_all = 1
let java_comment_strings = 1
let java_highlight_functions = 1


" My own sql handler
autocmd FileType sql call SetupDbcli()

function! SetupDbcli()
    map <F9> yip:newP:exec ":%!dbcli ".dbcli1GoPO
    vmap <F9> :y:newP:exec ":%!dbcli ".dbcli1GoPO
endfunction

set tags=./tags;,tags



" Taglist plugin config
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Enable_Fold_Column=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Highlight_Tag_On_BufEnter=1
let Tlist_Show_Menu=1
let Tlist_Sort_Type='name'
let Tlist_Display_Tag_Scope=0

if has('win32')
elseif has('mac')
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif

if has('win32')
    set guifont=consolas:h10
    set printfont=consolas:h9
elseif has('mac')
    set guifont=menlo:h11
    set printfont=menlo:h8
endif

set printoptions=left:8pc,right:5pc,number:n,paper:letter,formfeed:y


" Search for any .vimsettings files in the path to the file.
" Source them if you find them.
function! ApplyLocalSettings(dirname)
    " Don't try to walk a remote directory tree -- takes too long, too many
    " what if's
    let l:netrwProtocol = strpart(a:dirname, 0, stridx(a:dirname, "://"))
    if l:netrwProtocol != ""
        return
    endif

    " Convert windows paths to unix style (they still work)
    let l:curDir = substitute(a:dirname, "\\", "/", "g")
    let l:parentDir = strpart(l:curDir, 0, strridx(l:curDir, "/"))
    if isdirectory(l:parentDir)
        call ApplyLocalSettings(l:parentDir)
    endif

    " Now walk back up the path and source .vimsettings as you find them. This
    " way child directories can 'inherit' from their parents
    let l:settingsFile = a:dirname . "/.vimsettings"
    if filereadable(l:settingsFile)
        exec ":source " . l:settingsFile
    endif
endfunction
autocmd! BufEnter * call ApplyLocalSettings(expand("<afile>:p:h"))

 
" Thanks Tim Pope! (This is his Cucumber table auto-formatter)
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize /|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" netrw settings

let g:netrw_browse_split = 3
let g:netrw_hide = 1
"let g:netrw_liststyle = 3
let g:netrw_list_hide = "\.DS_Store"


" syntastic configuration
let g:syntastic_python_checker_args = "-d R -d C -d W"
let g:syntastic_enable_signs = 1
let g:syntastic_objc_checker = 'clang'


" vimshell configuration
let g:vimshell_prompt_expr = 'escape(fnamemodify(getcwd(), ":~").">", "\\[]()?! ")." "'
let g:vimshell_prompt_pattern = '^\%(\f\|\\.\)\+> '

" NewComplete stuff
let g:neocomplete#enable_at_startup = 1
