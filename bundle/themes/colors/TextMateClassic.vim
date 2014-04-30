" Vim color file
" Converted from Textmate theme Classic Modified using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Classic Modified"

hi Cursor ctermfg=15 ctermbg=0 cterm=NONE guifg=#ffffff guibg=#000000 gui=NONE
hi Visual ctermfg=NONE ctermbg=189 cterm=NONE guifg=NONE guibg=#c6deff gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e6e6e6 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e6e6e6 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e6e6e6 gui=NONE
hi LineNr ctermfg=244 ctermbg=254 cterm=NONE guifg=#808080 guibg=#e6e6e6 gui=NONE
hi VertSplit ctermfg=249 ctermbg=249 cterm=NONE guifg=#b5b5b5 guibg=#b5b5b5 gui=NONE
hi MatchParen ctermfg=21 ctermbg=NONE cterm=underline guifg=#0000ff guibg=NONE gui=underline
hi StatusLine ctermfg=0 ctermbg=249 cterm=bold guifg=#000000 guibg=#b5b5b5 gui=bold
hi StatusLineNC ctermfg=0 ctermbg=249 cterm=NONE guifg=#000000 guibg=#b5b5b5 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=189 cterm=NONE guifg=NONE guibg=#c6deff gui=NONE
hi IncSearch ctermfg=15 ctermbg=241 cterm=NONE guifg=#ffffff guibg=#666666 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi Folded ctermfg=252 ctermbg=15 cterm=NONE guifg=#cccccc guibg=#ffffff gui=NONE

hi Normal ctermfg=0 ctermbg=15 cterm=NONE guifg=#000000 guibg=#ffffff gui=NONE
hi Boolean ctermfg=21 ctermbg=NONE cterm=bold guifg=#000cff guibg=NONE gui=bold
hi Character ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi Comment ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=italic
hi Conditional ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi Constant ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi Define ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi DiffAdd ctermfg=0 ctermbg=149 cterm=bold guifg=#000000 guibg=#a1e85d gui=bold
hi DiffDelete ctermfg=203 ctermbg=NONE cterm=NONE guifg=#f25454 guibg=NONE gui=NONE
hi DiffChange ctermfg=0 ctermbg=152 cterm=NONE guifg=#000000 guibg=#b9cfe7 gui=NONE
hi DiffText ctermfg=0 ctermbg=74 cterm=bold guifg=#000000 guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi Float ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff0000 guibg=NONE gui=NONE
hi Function ctermfg=18 ctermbg=NONE cterm=bold guifg=#000099 guibg=NONE gui=bold
hi Identifier ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi Keyword ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi Label ctermfg=241 ctermbg=15 cterm=NONE guifg=#666666 guibg=#ffffff gui=NONE
hi NonText ctermfg=250 ctermbg=231 cterm=NONE guifg=#bfbfbf guibg=#f2f2f2 gui=NONE
hi Number ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff0000 guibg=NONE gui=NONE
hi Operator ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi PreProc ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi Special ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=254 cterm=NONE guifg=#bfbfbf guibg=#e6e6e6 gui=NONE
hi Statement ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi StorageClass ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi String ctermfg=241 ctermbg=15 cterm=NONE guifg=#666666 guibg=#ffffff gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=0 ctermbg=NONE cterm=bold guifg=#000000 guibg=NONE gui=bold
hi Todo ctermfg=252 ctermbg=NONE cterm=inverse,bold guifg=#cccccc guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi rubyFunction ctermfg=18 ctermbg=NONE cterm=bold guifg=#000099 guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi rubyConstant ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cc6633 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=241 ctermbg=15 cterm=NONE guifg=#666666 guibg=#ffffff gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi rubyInclude ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=241 ctermbg=15 cterm=NONE guifg=#666666 guibg=#ffffff gui=NONE
hi rubyRegexpDelimiter ctermfg=241 ctermbg=15 cterm=NONE guifg=#666666 guibg=#ffffff gui=NONE
hi rubyEscape ctermfg=77 ctermbg=NONE cterm=NONE guifg=#33cc33 guibg=NONE gui=NONE
hi rubyControl ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi rubyException ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cc6633 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi htmlTag ctermfg=21 ctermbg=NONE cterm=NONE guifg=#1c02ff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=21 ctermbg=NONE cterm=NONE guifg=#1c02ff guibg=NONE gui=NONE
hi htmlTagName ctermfg=21 ctermbg=NONE cterm=NONE guifg=#1c02ff guibg=NONE gui=NONE
hi htmlArg ctermfg=21 ctermbg=NONE cterm=NONE guifg=#1c02ff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=21 ctermbg=NONE cterm=bold guifg=#0000ff guibg=NONE gui=bold
hi javaScriptRailsFunction ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi yamlAlias ctermfg=66 ctermbg=NONE cterm=NONE guifg=#318495 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=NONE ctermbg=15 cterm=NONE guifg=NONE guibg=#ffffff gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi cssColor ctermfg=0 ctermbg=NONE cterm=NONE guifg=#000000 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssClassName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssValueLength ctermfg=196 ctermbg=NONE cterm=NONE guifg=#ff0000 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=90 ctermbg=NONE cterm=NONE guifg=#990099 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
