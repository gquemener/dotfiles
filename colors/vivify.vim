set background=dark "or light
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "vivify"
set t_Co=256

highlight Boolean             guifg=#289e16 ctermfg=34                            gui=none cterm=none
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Comment             guifg=#99968b ctermfg=144                           gui=italic cterm=italic
highlight Conditional         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Constant            guifg=#e5786d ctermfg=167                           gui=none cterm=none
highlight Cursor              guifg=#eeeeee ctermfg=255 guibg=#656565 ctermbg=241 gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#2d2d2d ctermbg=236 gui=none cterm=none
highlight CursorLine          guifg=#eeeeee ctermfg=255 guibg=#2d2d2d ctermbg=236 gui=none cterm=none
highlight Debug               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Define              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DiffAdd             guifg=#e0eee0 ctermfg=194                           gui=none cterm=none
highlight DiffChange          guifg=#e0eee0 ctermfg=194                           gui=none cterm=none
highlight DiffDelete          guifg=#e0eee0 ctermfg=194                           gui=none cterm=none
highlight DiffText            guifg=#e5786d ctermfg=167                           gui=none cterm=none
highlight Directory           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight ErrorMsg            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Exception           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Float               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight FoldColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Folded              guifg=#a0a8b0 ctermfg=67  guibg=#384048 ctermbg=67  gui=none cterm=none
highlight Function            guifg=#cae682 ctermfg=192                           gui=none cterm=none
highlight Identifier          guifg=#cae682 ctermfg=192                           gui=none cterm=none
highlight Ignore              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight IncSearch           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Include             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Keyword             guifg=#8ac6f2 ctermfg=117                           gui=none cterm=none
highlight Label               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight LineNr              guifg=#857b6f ctermfg=137 guibg=#000000 ctermbg=0   gui=none cterm=none
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MatchParen          guifg=#f6f3e8 ctermfg=230 guibg=#857b6f ctermbg=137 gui=bold cterm=bold
highlight ModeMsg             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MoreMsg             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight NonText             guifg=#808080 ctermfg=8   guibg=#303030 ctermbg=236 gui=none cterm=none
highlight Normal              guifg=#e0eee0 ctermfg=194 guibg=#242424 ctermbg=235 gui=none cterm=none
highlight Number              guifg=#e5786d ctermfg=167                           gui=none cterm=none
highlight Operator            guifg=#e0eee0 ctermfg=194                           gui=none cterm=none
highlight PMenu               guifg=#f6f3e8 ctermfg=230 guibg=#444444 ctermbg=238 gui=none cterm=none
highlight PMenuSbar           guifg=#f6f3e8 ctermfg=230 guibg=#000000 ctermbg=0   gui=none cterm=none
highlight PMenuSel            guifg=#000000 ctermfg=0   guibg=#cae682 ctermbg=192 gui=none cterm=none
highlight PMenuThumb          guifg=#f6f3e8 ctermfg=230 guibg=#857b6f ctermbg=137 gui=none cterm=none
highlight PreCondit           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight PreProc             guifg=#e5786d ctermfg=167                           gui=none cterm=none
highlight Question            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Repeat              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Search              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SignColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Special             guifg=#e7f6da ctermfg=193                           gui=none cterm=none
highlight SpecialChar         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialComment      guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialKey          guifg=#808080 ctermfg=8   guibg=#343434 ctermbg=236 gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#8ac6f2 ctermfg=117                           gui=none cterm=none
highlight StatusLine          guifg=#f6f3e8 ctermfg=230 guibg=#444444 ctermbg=238 gui=italic cterm=italic
highlight StatusLineNC        guifg=#857b6f ctermfg=137 guibg=#444444 ctermbg=238 gui=none cterm=none
highlight StorageClass        guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight String              guifg=#95e454 ctermfg=155                           gui=italic cterm=italic
highlight Structure           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLine             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineFill         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineSel          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Tag                 guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Title               guifg=#f6f3e8 ctermfg=230                           gui=bold cterm=bold
highlight Todo                guifg=#8f8f8f ctermfg=245                           gui=italic cterm=italic
highlight Type                guifg=#cae682 ctermfg=192                           gui=none cterm=none
highlight Typedef             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Underlined          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#444444 ctermfg=238 guibg=#444444 ctermbg=238 gui=none cterm=none
highlight Visual              guifg=#f6f3e8 ctermfg=230 guibg=#444444 ctermbg=238 gui=none cterm=none
highlight VisualNOS           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight WarningMsg          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight WildMenu            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight pythonBuiltin       guifg=#e0eee0 ctermfg=194                           gui=none cterm=none
