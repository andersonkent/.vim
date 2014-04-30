" Kent's Favorite color scheme

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "kent"

highlight Normal        guifg=#000000 guibg=#ffffff  
highlight LineNr        guifg=#737373 guibg=#efefef
highlight CursorLine                  guibg=#efefef

highlight Comment       guifg=#a0a0a0  gui=NONE
highlight Keyword       guifg=#0000ff gui=bold
highlight Statement     guifg=blue  gui=NONE
highlight Constant      guifg=red   gui=NONE
highlight String        guifg=#008000 gui=NONE
highlight Identifier    guifg=DarkCyan  gui=NONE
highlight Type          guifg=blue  gui=NONE
highlight PreProc       guifg=Purple    gui=NONE
highlight xslElement    guifg=DarkBlue  gui=bold
highlight StorageClass  guifg=#0080ff gui=NONE
"highlight Function      guifg=#000000 gui=bold
"highlight Search
"highlight Visual
"highlight Special
"highlight StatusLine
"
hi DiffAdd      guibg=#caffca
hi DiffChange   guibg=#cacaff
hi DiffDelete   guibg=#ffcaca   gui=none
hi DiffText     guibg=#ffffca

