" ~/.vim/colors/manny-dark.vim

"--------------------------------------------
"-- Variables
"--------------------------------------------

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"





"------------------------------------------------------------------------------
"  Editor
"------------------------------------------------------------------------------

highlight ColorColumn                                             guibg=#606366
highlight CursorLine                                              guibg=#000000
highlight CursorLineNr                              guifg=#CFD2D5 guibg=#000000
highlight EndOfBuffer                               guifg=#606366 guibg=#000000
highlight ErrorMsg                                  guifg=#000000 guibg=#FF0000
highlight FoldColumn                                guifg=#000000 guibg=#000000
highlight LineNr                                    guifg=#606366 guibg=#000000
highlight IncSearch                                 guifg=#606366 guibg=#000000
highlight ModeMsg                                   guifg=#000000 guibg=#606366
highlight MoreMsg                                   guifg=#000000 guibg=#606366
highlight Pmenu                                     guifg=#CFD2D5 guibg=#606366
highlight PmenuSbar                                               guibg=#606366
highlight PmenuSel                                  guifg=#CFD2D5 guibg=#000000
highlight PmenuThumb                                              guibg=#CFD2D5
highlight Search                                    guifg=#CFD2D5 guibg=#606366
highlight SignColumn                                              guibg=#000000
highlight StatusLine                                guifg=#606366 guibg=#000000
highlight StatusLineNC                              guifg=#606366 guibg=#000000
highlight Visual                                    guifg=#000000 guibg=#606366
highlight WarningMsg                                guifg=#000000 guibg=#FFA600
"highlight WinSeparator      guifg=black     guibg=black



"------------------------------------------------------------------------------
"  Project Tree
"------------------------------------------------------------------------------

highlight Directory                                 guifg=#CFD2D5 guibg=#000000



"------------------------------------------------------------------------------
"  Language Defaults
"------------------------------------------------------------------------------

highlight Boolean                                   guifg=#589BD9 guibg=#000000
highlight Charakter                                 guifg=#CFD2D5 guibg=#000000
highlight Comment                                   guifg=#FF0000 guibg=#000000
highlight Conditional                               guifg=#589BD9 guibg=#000000
highlight Constant                                  guifg=#C064C7 guibg=#000000
highlight Delimiter                                 guifg=#CFD2D5 guibg=#000000
highlight Exception                                 guifg=#589BD9 guibg=#000000
highlight Function                                  guifg=#E8BF6A guibg=#000000
highlight Identifier                                guifg=#C064C7 guibg=#000000
highlight Include                                   guifg=#589BD9 guibg=#000000
highlight Keyword                                   guifg=#589BD9 guibg=#000000
highlight MatchParen                                guifg=#CFD2D5 guibg=#606366
highlight Normal                                    guifg=#CFD2D5 guibg=#000000
highlight Number                                    guifg=#A5C25C guibg=#000000
highlight Operator                                  guifg=#CFD2D5 guibg=#000000
highlight PreProc                                   guifg=#589BD9 guibg=#000000
highlight Special                                   guifg=#CFD2D5 guibg=#000000
highlight String                                    guifg=#D79E83 guibg=#000000
highlight Todo                                      guifg=#FF0000 guibg=#000000
highlight Type                                      guifg=#45C8B0 guibg=#000000

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"

"------------------------------------------------------------------------------
"  COC
"------------------------------------------------------------------------------

"highlight CocExplorerIndentLine guifg=#936639 guibg=#fee440
"highlight CocExplorerBufferRoot guifg=#936639 guibg=#fee440
"highlight CocExplorerFileRoot guifg=#936639 guibg=#fee440
"highlight CocExplorerBufferFullPath guifg=#936639 guibg=#fee440
"highlight CocExplorerFileFullPath guifg=#936639 guibg=#fee440
"highlight CocExplorerBufferReadonly guifg=#936639 guibg=#fee440
"highlight CocExplorerBufferModified guifg=#936639 guibg=#fee440
"highlight CocExplorerBufferNameVisible guifg=#936639 guibg=#fee440
"highlight CocExplorerFileReadonly guifg=#936639 guibg=#fee440
"highlight CocExplorerFileModified guifg=#936639 guibg=#fee440
"highlight CocExplorerFileHidden guifg=#936639 guibg=#fee440
"highlight CocExplorerHelpline guifg=#936639 guibg=#fee440
"highlight CocSelectedText  ctermfg=9 guifg=#fb4934
"highlight CocCodeLens     ctermfg=248 guifg=#999999
"highlight CocUnderline    term=underline cterm=underline gui=underline guisp=#ebdbb2
"highlight CocBold         term=bold cterm=bold gui=bold
"highlight CocItalic       term=italic cterm=italic gui=italic
"highlight CocStrikeThrough  term=strikethrough cterm=strikethrough gui=strikethrough
"highlight CocMarkdownLink  ctermfg=12 guifg=#15aabf
"highlight CocDisabled     ctermfg=248 guifg=#999999
"highlight CocSearch       ctermfg=12 guifg=#15aabf
"highlight CocFloating     ctermbg=16 guibg=#000000
"highlight CocMenuSel      ctermbg=16 guibg=#000000
"highlight CocFloatThumb   ctermbg=16 guibg=#000000
"highlight CocFloatSbar    ctermbg=16 guibg=#000000
"highlight CocFloatActive guifg=#282828 guibg=#98971a
"highlight CocFadeOut     guifg=#282828 guibg=#98971a
"highlight CocMarkdownCode guifg=#282828 guibg=#98971a
"highlight CocMarkdownHeader guifg=#282828 guibg=#98971a
"highlight tedHighlight guifg=#282828 guibg=#98971a
"highlight CocUnusedHighlight guifg=#282828 guibg=#98971a
"highlight CocListLine    guifg=#282828 guibg=#98971a
"highlight CocListSearch  guifg=#282828 guibg=#98971a
"highlight CocListMode    guifg=#282828 guibg=#98971a
"highlight CocListPath    guifg=#282828 guibg=#98971a
"highlight CocHighlightText guifg=#282828 guibg=#98971a
"highlight CocHoverRange  guifg=#282828 guibg=#98971a
"highlight CocCursorRange guifg=#282828 guibg=#98971a
"highlight CocLinkedEditing guifg=#282828 guibg=#98971a
"highlight CocHighlightRead guifg=#282828 guibg=#98971a
"highlight CocHighlightWrite guifg=#282828 guibg=#98971a
"highlight CocNotificationProgress  ctermfg=12 guifg=#15aabf
"highlight CocNotificationButton guifg=#282828 guibg=#98971a
"highlight CocNotificationError guifg=#282828 guibg=#98971a
"highlight CocErrorFloat   ctermfg=9 ctermbg=16 guifg=#ff0000 guibg=#000000
"highlight CocNotificationWarning guifg=#282828 guibg=#98971a
"highlight CocWarningFloat  ctermfg=130 ctermbg=16 guifg=#ff922b guibg=#000000
"highlight CocNotificationInfo guifg=#282828 guibg=#98971a
"highlight CocInfoFloat    ctermfg=11 ctermbg=16 guifg=#fab005 guibg=#000000
"highlight CocSnippetVisual guifg=#282828 guibg=#98971a
"highlight CocTreeTitle   guifg=#282828 guibg=#98971a
"highlight CocTreeDescription guifg=#282828 guibg=#98971a
"highlight CocTreeOpenClose guifg=#282828 guibg=#98971a
"highlight CocTreeSelected guifg=#282828 guibg=#98971a
"highlight CocSelectedRange guifg=#282828 guibg=#98971a
"highlight CocSymbolDefault guifg=#282828 guibg=#98971a
"highlight CocPumSearch   guifg=#282828 guibg=#98971a
"highlight CocPumDetail   guifg=#282828 guibg=#98971a
"highlight CocPumDetail   guifg=#282828 guibg=#98971a
"highlight CocPumMenu     guifg=#282828 guibg=#98971a
"highlight CocPumShortcut guifg=#282828 guibg=#98971a
"highlight CocPumDeprecated  guifg=#282828 guibg=#98971a
"highlight CocPumVirtualText  ctermfg=12 guifg=#504945
"highlight CocFloatDividingLine  ctermfg=12 guifg=#504945
"highlight CocErrorHighlight  guifg=#282828 guibg=#98971a
"highlight CocErrorSign    ctermfg=9 guifg=#ff0000
"highlight CocErrorVirtualText  ctermfg=9 guifg=#ff0000 guibg=black
"highlight CocWarningHighlight  guifg=#282828 guibg=#98971a
"highlight CocWarningSign  ctermfg=130 guifg=#ff922b
"highlight CocWarningVirtualText  ctermfg=130 guifg=#ff922b guibg=black
"highlight CocInfoHighlight  guifg=#282828 guibg=#98971a
"highlight CocInfoSign     ctermfg=11 guifg=#fab005
"highlight CocInfoVirtualText  ctermfg=11 guifg=#fab005 guibg=black
"highlight CocHintHighlight  guifg=#282828 guibg=#98971a
"highlight CocHintSign     ctermfg=12 guifg=#15aabf
"highlight CocHintVirtualText  ctermfg=12 guifg=#15aabf guibg=black
"highlight CocHintFloat    ctermfg=12 ctermbg=16 guifg=#15aabf guibg=#000000
"highlight CocInlayHint    ctermfg=12 ctermbg=242 guifg=#15aabf guibg=black
"highlight CocInlayHintParameter guifg=#282828 guibg=#98971a
"highlight CocInlayHintType  guifg=#282828 guibg=#98971a
"highlight CocListBlackBlack  guifg=#282828 guibg=#282828
"highlight CocListBlackBlue  guifg=#282828 guibg=#458588
"highlight CocListBlackGreen  guifg=#282828 guibg=#98971a
"highlight CocListBlackGrey  guifg=#282828 guibg=#928374
"highlight CocListBlackWhite  guifg=#282828 guibg=#a89984
"highlight CocListBlackCyan  guifg=#282828 guibg=#689d6a
"highlight CocListBlackYellow  guifg=#282828 guibg=#d79921
"highlight CocListBlackMagenta  guifg=#282828 guibg=#b16286
"highlight CocListBlackRed  guifg=#282828 guibg=#cc241d
"highlight ack  ctermfg=0 guifg=#282828
"highlight ocListBgBlack  ctermbg=0 guibg=#282828
"highlight CocListBlueBlack  guifg=#458588 guibg=#282828
"highlight CocListBlueBlue  guifg=#458588 guibg=#458588
"highlight CocListBlueGreen  guifg=#458588 guibg=#98971a
"highlight CocListBlueGrey  guifg=#458588 guibg=#928374
"highlight CocListBlueWhite  guifg=#458588 guibg=#a89984
"highlight CocListBlueCyan  guifg=#458588 guibg=#689d6a
"highlight CocListBlueYellow  guifg=#458588 guibg=#d79921
"highlight CocListBlueMagenta  guifg=#458588 guibg=#b16286
"highlight CocListBlueRed  guifg=#458588 guibg=#cc241d
"highlight CocListFgBlue   ctermfg=12 guifg=#458588
"highlight CocListBgBlue   ctermbg=12 guibg=#458588
"highlight CocListGreenBlack  guifg=#98971a guibg=#282828
"highlight CocListGreenBlue  guifg=#98971a guibg=#458588
"highlight CocListGreenGreen  guifg=#98971a guibg=#98971a
"highlight CocListGreenGrey  guifg=#98971a guibg=#928374
"highlight CocListGreenWhite  guifg=#98971a guibg=#a89984
"highlight CocListGreenCyan  guifg=#98971a guibg=#689d6a
"highlight CocListGreenYellow  guifg=#98971a guibg=#d79921
"highlight CocListGreenMagenta  guifg=#98971a guibg=#b16286
"highlight CocListGreenRed  guifg=#98971a guibg=#cc241d
"highlight CocListFgGreen  ctermfg=10 guifg=#98971a
"highlight CocListBgGreen  ctermbg=10 guibg=#98971a
"highlight CocListGreyBlack  guifg=#928374 guibg=#282828
"highlight CocListGreyBlue  guifg=#928374 guibg=#458588
"highlight CocListGreyGreen  guifg=#928374 guibg=#98971a
"highlight CocListGreyGrey  guifg=#928374 guibg=#928374
"highlight CocListGreyWhite  guifg=#928374 guibg=#a89984
"highlight CocListGreyCyan  guifg=#928374 guibg=#689d6a
"highlight CocListGreyYellow  guifg=#928374 guibg=#d79921
"highlight CocListGreyMagenta  guifg=#928374 guibg=#b16286
"highlight CocListGreyRed  guifg=#928374 guibg=#cc241d
"highlight CocListFgGrey   ctermfg=248 guifg=#928374
"highlight CocListBgGrey   ctermbg=248 guibg=#928374
"highlight CocListWhiteBlack  guifg=#a89984 guibg=#282828
"highlight CocListWhiteBlue  guifg=#a89984 guibg=#458588
"highlight CocListWhiteGreen  guifg=#a89984 guibg=#98971a
"highlight CocListWhiteGrey  guifg=#a89984 guibg=#928374
"highlight CocListWhiteWhite  guifg=#a89984 guibg=#a89984
"highlight CocListWhiteCyan  guifg=#a89984 guibg=#689d6a
"highlight CocListWhiteYellow  guifg=#a89984 guibg=#d79921
"highlight CocListWhiteMagenta  guifg=#a89984 guibg=#b16286
"highlight CocListWhiteRed  guifg=#a89984 guibg=#cc241d
"highlight CocListFgWhite  ctermfg=15 guifg=#a89984
"highlight CocListBgWhite  ctermbg=15 guibg=#a89984
"highlight CocListCyanBlack  guifg=#689d6a guibg=#282828
"highlight CocListCyanBlue  guifg=#689d6a guibg=#458588
"highlight CocListCyanGreen  guifg=#689d6a guibg=#98971a
"highlight CocListCyanGrey  guifg=#689d6a guibg=#928374
"highlight CocListCyanWhite  guifg=#689d6a guibg=#a89984
"highlight CocListCyanCyan  guifg=#689d6a guibg=#689d6a
"highlight CocListCyanYellow  guifg=#689d6a guibg=#d79921
"highlight CocListCyanMagenta  guifg=#689d6a guibg=#b16286
"highlight CocListCyanRed  guifg=#689d6a guibg=#cc241d
"highlight CocListFgCyan   ctermfg=14 guifg=#689d6a
"highlight CocListBgCyan   ctermbg=14 guibg=#689d6a
"highlight CocListYellowBlack  guifg=#d79921 guibg=#282828
"highlight CocListYellowBlue  guifg=#d79921 guibg=#458588
"highlight CocListYellowGreen  guifg=#d79921 guibg=#98971a
"highlight CocListYellowGrey  guifg=#d79921 guibg=#928374
"highlight CocListYellowWhite  guifg=#d79921 guibg=#a89984
"highlight CocListYellowCyan  guifg=#d79921 guibg=#689d6a
"highlight CocListYellowYellow guifg=#ff006e guibg=#3a86ff
"highlight CocListYellowMagenta guifg=#ff006e guibg=#3a86ff
"highlight CocListYellowRed guifg=#ff006e guibg=#3a86ff
"highlight CocListFgYellow guifg=#ff006e guibg=#3a86ff
"highlight CocListBgYellow guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaBlack guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaBlue guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaGreen guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaGrey guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaWhite guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaCyan guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaYellow guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaMagenta guifg=#ff006e guibg=#3a86ff
"highlight CocListMagentaRed guifg=#ff006e guibg=#3a86ff
"highlight CocListFgMagenta guifg=#ff006e guibg=#3a86ff
"highlight CocListBgMagenta guifg=#ff006e guibg=#3a86ff
"highlight CocListRedBlack guifg=#ff006e guibg=#3a86ff
"highlight CocListRedBlue guifg=#ff006e guibg=#3a86ff
"highlight CocListRedGreen guifg=#ff006e guibg=#3a86ff
"highlight CocListRedGrey guifg=#ff006e guibg=#3a86ff
"highlight CocListRedWhite guifg=#ff006e guibg=#3a86ff
"highlight CocListRedCyan guifg=#ff006e guibg=#3a86ff
"highlight CocListRedYellow guifg=#ff006e guibg=#3a86ff
"highlight CocListRedMagenta guifg=#ff006e guibg=#3a86ff
"highlight CocListRedRed  guifg=#ff006e guibg=#3a86ff
"highlight CocListFgRed   guifg=#ff006e guibg=#3a86ff
"highlight CocListBgRed   guifg=#ff006e guibg=#3a86ff
"highlight CocSemNumber   guifg=#ff006e guibg=#3a86ff
"highlight CocSemFunction guifg=#ff006e guibg=#3a86ff
"highlight CocSemKeyword  guifg=#ff006e guibg=#3a86ff
"highlight CocSemParameter guifg=#ff006e guibg=#3a86ff
"highlight CocSemEvent    guifg=#ff006e guibg=#3a86ff
"highlight CocSemModifier guifg=#ff006e guibg=#3a86ff
"highlight CocSemMacro    guifg=#ff006e guibg=#3a86ff
"highlight CocSemDeprecated guifg=#ff006e guibg=#3a86ff
"highlight CocSemClass    guifg=#ff006e guibg=#3a86ff
"highlight CocSemDecorator guifg=#ff006e guibg=#3a86ff
"highlight CocSemOperator guifg=#ff006e guibg=#3a86ff
"highlight CocSemStruct   guifg=#ff006e guibg=#3a86ff
"highlight CocSemRegexp   guifg=#ff006e guibg=#3a86ff
"highlight CocSemMethod   guifg=#ff006e guibg=#3a86ff
"highlight CocSemComment  guifg=#ff006e guibg=#3a86ff
"highlight CocSemEnum     guifg=#ff006e guibg=#3a86ff
"highlight CocSemInterface guifg=#ff006e guibg=#3a86ff
"highlight CocSemType     guifg=#ff006e guibg=#3a86ff
"highlight CocSemProperty guifg=#ff006e guibg=#3a86ff
"highlight CocSemTypeParameter guifg=#ff006e guibg=#3a86ff
"highlight CocSemEnumMember guifg=#ff006e guibg=#3a86ff
"highlight CocSemBoolean  guifg=#ff006e guibg=#3a86ff
"highlight CocSemNamespace guifg=#ff006e guibg=#3a86ff
"highlight CocSemString   guifg=#ff006e guibg=#3a86ff
"highlight CocSemVariable guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolUnit  guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolNumber guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolFunction guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolKey   guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolKeyword guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolReference guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolFolder guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolVariable guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolNull  guifg=#ff006e guibg=#3a86ff
"highlight CocSymbolValue guifg=#ff006e guibg=#264653
"highlight CocSymbolConstant guifg=#ff006e guibg=#2a9d8f
"highlight CocSymbolText  guifg=#ff006e guibg=#e9c46a
"highlight CocSymbolModule guifg=#ff006e guibg=#f4a261
"highlight CocSymbolPackage guifg=#ff006e guibg=#e76f51
"highlight CocSymbolClass guifg=#ff006e guibg=#ccd5ae
"highlight CocSymbolOperator guifg=#ff006e guibg=#e9edc9
"highlight CocSymbolStruct guifg=#ff006e guibg=#faedcd
"highlight CocSymbolObject guifg=#ff006e guibg=#d4a373
"highlight CocSymbolMethod guifg=#ff006e guibg=#e63946
"highlight CocSymbolArray guifg=#ff006e guibg=#f1faee
"highlight CocSymbolEnum  guifg=#ff006e guibg=#a8dadc
"highlight CocSymbolField guifg=#ff006e guibg=#457b9d
"highlight CocSymbolInterface guifg=#ff006e guibg=#1d3557
"highlight CocSymbolProperty guifg=#ff006e guibg=#606c38
"highlight CocSymbolColor guifg=#ff006e guibg=#283618
"highlight CocSymbolFile  guifg=#ff006e guibg=#fefae0
"highlight CocSymbolEvent guifg=#ff006e guibg=#dda15e
"highlight CocSymbolTypeParameter guifg=#ff006e guibg=#bc6c25
"highlight CocSymbolConstructor guifg=#ff006e guibg=#8ecae6
"highlight CocSymbolSnippet guifg=#ff006e guibg=#219ebc
"highlight CocSymbolBoolean guifg=#ff006e guibg=#023047
"highlight CocSymbolNamespace guifg=#ff006e guibg=#ffb703
"highlight CocSymbolString guifg=#ff006e guibg=#fb8500
"highlight CocSymbolEnumMember guifg=#ff006e guibg=#cdb4db
"highlight CocErrorLine   guifg=#ff006e guibg=#ffc8dd
"highlight CocWarningLine guifg=#ff006e guibg=#ffafcc
"highlight CocInfoLine    guifg=#ff006e guibg=#8338ec
"highlight CocHintLine    guifg=#ff006e guibg=#fb5607
"highlight CocSelectedLine guifg=#ff006e guibg=#ae2012
"highlight CocGitChangedSign guifg=#ff006e guibg=#005f73
"highlight CocGitAddedSign guifg=#ff006e guibg=#e9d8a6
"highlight CocGitRemovedSign guifg=#ff006e guibg=#ee9b00
"highlight CocGitTopRemovedSign guifg=#ff006e guibg=#588157
"highlight CocGitChangeRemovedSign guifg=#ff006e guibg=#a7c957
"CocErrorLine   xxx cleared
"CocWarningLine xxx cleared
"CocInfoLine    xxx cleared
"CocHintLine    xxx cleared
"CocSelectedLine xxx cleared
"CocGitChangedSign xxx links to DiffChange
"CocGitAddedSign xxx links to DiffAdd
"CocGitRemovedSign xxx links to DiffDelete
"CocGitTopRemovedSign xxx links to DiffDelete
"CocGitChangeRemovedSign xxx links to DiffChange
"CocHelperNormalFloatNC xxx links to CocHelperNormalFloat
"CocHelperNormalFloat xxx cleared
"CocExplorerGitPathChange_Internal xxx ctermfg=121 guifg=#45C8B0
"CocExplorerGitContentChange_Internal xxx ctermfg=121 guifg=#A5C25C
"CocExplorerErrorColor_Internal xxx ctermfg=15 guifg=#FF006E
"CocExplorerCommentColor_Internal xxx ctermfg=14 guifg=#FF0000
"CocExplorerNormalColor_Internal xxx ctermfg=188 guifg=#CFD2D5
"CocExplorerCocErrorSignColor_Internal xxx ctermfg=9 guifg=#FF0000
"CocExplorerCocWarningSignColor_Internal xxx ctermfg=130 guifg=#FF922B



"------------------------------------------------------------------------------
"  CSS
"------------------------------------------------------------------------------



highlight css guifg=#ff006e guibg=#3a86ff
highlight cssAnimationAttr guifg=#ff006e guibg=#3a86ff
highlight cssAnimationProp guifg=#ff006e guibg=#3a86ff
highlight cssAtKeyword                              guifg=#589BD9
highlight cssAtRule                                 guifg=#589BD9
highlight cssAtRuleLogical guifg=#ff006e guibg=#3a86ff
highlight cssAttr                                   guifg=#CFD2D5
highlight cssAttrComma                              guifg=#CFD2D5
highlight cssAttributeSelector                      guifg=#589BD9
highlight cssAttrRegion                             guifg=#CFD2D5
highlight cssAuralAttr guifg=#ff006e guibg=#a7c957
highlight cssAuralProp  guifg=#ff006e guibg=#a7c957
highlight cssBackgroundAttr                         guifg=#E8BF6A
highlight cssBackgroundProp                         guifg=#589BD9
"auto keyword:
highlight cssBoxAttr                                guifg=#CFD2D5
highlight cssBoxProp                                guifg=#589BD9
highlight cssBraceError                             guifg=black   guibg=#FF0000
highlight cssBraces                                 guifg=#CFD2D5
highlight cssCascadeAttr guifg=#ff006e guibg=#3a86ff
highlight cssCascadeProp guifg=#ff006e guibg=#3a86ff
highlight cssClassName                              guifg=#45C8B0
highlight cssClassNameDot                           guifg=#CFD2D5
highlight cssColor                                  guifg=#CFD2D5
highlight cssColorProp guifg=#ff006e guibg=#3a86ff
highlight cssComment                                guifg=#FF0000
"none keyword:
highlight cssCommonAttr                             guifg=#CFD2D5
highlight cssContentForPagedMediaAttr guifg=#ff006e guibg=#3a86ff
highlight cssContentForPagedMediaProp guifg=#ff006e guibg=#3a86ff
"CSS-Variables:
highlight cssCustomProp                             guifg=#C064C7
highlight cssDefinition guifg=#ff006e guibg=#3a86ff
highlight cssDeprecated guifg=#ff006e guibg=#3a86ff
highlight cssDimensionAttr guifg=#ff006e guibg=#3a86ff
highlight cssDimensionProp guifg=#ff006e guibg=#3a86ff
highlight cssError                                  guifg=black   guibg=#FF0000
highlight cssFlexibleBoxAttr                                      guifg=#CFD2D5
highlight cssFlexibleBoxProp                                      guifg=#589BD9
highlight cssFontAttr                                             guifg=#CFD2D5
highlight cssFontDescriptor guifg=#ff006e guibg=#3a86ff
highlight cssFontDescriptorAttr guifg=#ff006e guibg=#3a86ff
highlight cssFontDescriptorProp                                   guifg=#589BD9
highlight cssFontProp                                             guifg=#589BD9
highlight cssFunction                                             guifg=#E8BF6A
highlight cssFunctionComma                                        guifg=#CFD2D5
highlight cssFunctionName                                         guifg=#E8BF6A
highlight cssGeneratedContentAttr guifg=#ff006e guibg=#3a86ff
highlight cssGeneratedContentProp                                 guifg=#589BD9
highlight cssGradientAttr guifg=#ff006e guibg=#3a86ff
highlight cssGridAttr guifg=#ff006e guibg=#3a86ff
highlight cssGridProp                                             guifg=#589BD9
highlight cssHacks guifg=#ff006e guibg=#3a86ff
highlight cssHyperlinkAttr guifg=#ff006e guibg=#3a86ff
highlight cssHyperlinkProp guifg=#ff006e guibg=#3a86ff
highlight cssIdentifier                                           guifg=#45C8B0

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"

highlight cssIEUIAttr guifg=#ff006e guibg=#3a86ff
highlight cssIEUIProp guifg=#ff006e guibg=#3a86ff
highlight cssImportant                                            guifg=#589BD9
highlight cssInteractAttr guifg=#ff006e guibg=#3a86ff
highlight cssInteractProp guifg=#ff006e guibg=#3a86ff
highlight cssKeyFrameProp                           guifg=#CFD2D5 guibg=#000000
highlight cssLineboxAttr guifg=#ff006e guibg=#3a86ff
highlight cssLineboxProp guifg=#ff006e guibg=#3a86ff
highlight cssListAttr guifg=#ff006e guibg=#3a86ff
highlight cssListProp                                             guifg=#589BD9
highlight cssMarginAttr guifg=#ff006e guibg=#3a86ff
highlight cssMarqueeAttr guifg=#ff006e guibg=#3a86ff
highlight cssMarqueeProp guifg=#ff006e guibg=#3a86ff
highlight cssMediaAttr guifg=#ff006e guibg=#3a86ff
highlight cssMediaComma guifg=#ff006e guibg=#3a86ff
highlight cssMediaProp                                            guifg=#589BD9
highlight cssMediaType guifg=#ff006e guibg=#3a86ff
highlight cssMobileTextProp guifg=#ff006e guibg=#3a86ff
highlight cssMultiColumnAttr guifg=#ff006e guibg=#3a86ff
highlight cssMultiColumnProp                                      guifg=#589BD9
highlight cssNoise                                                guifg=#CFD2D5
highlight cssPaddingAttr guifg=#ff006e guibg=#52796f
highlight cssPagedMediaAttr guifg=#ff006e guibg=#52796f
highlight cssPagedMediaProp guifg=#ff006e guibg=#52796f
highlight cssPageMarginProp guifg=#ff006e guibg=#52796f
highlight cssPageProp                                             guifg=#589BD9
highlight cssPagePseudo guifg=#ff006e guibg=#52796f
highlight cssPositioningAttr                                      guifg=#CFD2D5
highlight cssPositioningProp                                      guifg=#589BD9
highlight cssPrintAttr guifg=#ff006e guibg=#ff006e
highlight cssPrintProp guifg=#ff006e guibg=#ff006e
highlight cssProp                                                 guifg=#589BD9
highlight cssPseudoClass                                          guifg=#589BD9
highlight cssPseudoClassFn guifg=#ff006e guibg=#dda15e
highlight cssPseudoClassId                                        guifg=#589BD9
highlight cssPseudoClassLang guifg=#ff006e guibg=#dda15e
highlight cssRenderAttr guifg=#ff006e guibg=#dda15e
highlight cssRenderProp guifg=#ff006e guibg=#dda15e
highlight cssRubyAttr guifg=#ff006e guibg=#dda15e
highlight cssRubyProp guifg=#ff006e guibg=#dda15e
highlight cssSelectorOp                                           guifg=#CFD2D5
highlight cssSelectorOp2                                          guifg=#CFD2D5
highlight cssSpecialCharQ guifg=#ff006e guibg=#dda15e
highlight cssSpecialCharQQ guifg=#ff006e guibg=#dda15e
highlight cssSpeechAttr guifg=#ff006e guibg=#dda15e
highlight cssSpeechProp guifg=#ff006e guibg=#dda15e
highlight cssStringQ guifg=#ff006e guibg=#dda15e


highlight cssStringQQ                                             guifg=#D79E83
highlight cssStyle guifg=#ff006e guibg=#dda15e
highlight cssTableAttr                                            guifg=#CFD2D5
highlight cssTableProp guifg=#dda15e guibg=#ff006e
highlight cssTagName                                              guifg=#589BD9
highlight cssTextAttr                                             guifg=#CFD2D5
highlight cssTextProp                                             guifg=#589BD9
highlight cssTransformAttr guifg=#dda15e guibg=#ff006e
highlight cssTransformProp                                        guifg=#589BD9
highlight cssTransitionAttr                                       guifg=#CFD2D5
highlight cssTransitionProp guifg=#dda15e guibg=#ff006e
highlight cssUIAttr                                               guifg=#CFD2D5
highlight cssUIProp                                               guifg=#589BD9
highlight cssUnicodeEscape guifg=#dda15e guibg=#ff006e
highlight cssUnicodeRange guifg=#dda15e guibg=#ff006e


highlight cssUnitDecorators                                       guifg=#CFD2D5
highlight cssURL guifg=#dda15e guibg=#ff006e
highlight cssValueAngle                                           guifg=#A5C25C
highlight cssValueFrequency guifg=#dda15e guibg=#ff006e
highlight cssValueInteger guifg=#dda15e guibg=#ff006e
highlight cssValueLength                                          guifg=#A5C25C
highlight cssValueNumber                                          guifg=#A5C25C
highlight cssValueTime guifg=#dda15e guibg=#ff006e
highlight cssVendor guifg=#936639 guibg=#fee440
highlight cssMathParens  guifg=#936639 guibg=#fee440
highlight cssMathGroup   guifg=#936639 guibg=#fee440
highlight cssBorderProp                                           guifg=#CFD2D5
highlight cssBorderAttr  guifg=#936639 guibg=#fee440
highlight cssHyerlinkProp guifg=#936639 guibg=#fee440
highlight cssObjectProp  guifg=#936639 guibg=#fee440
highlight cssObjectAttr  guifg=#936639 guibg=#fee440
highlight cssHyerlinkAttr guifg=#936639 guibg=#fee440
highlight cssMediaBlock  guifg=#936639 guibg=#fee440
highlight cssLength      guifg=#936639 guibg=#fee440
highlight cssString      guifg=#936639 guibg=#fee440



"------------------------------------------------------------------------------
"  HTML
"------------------------------------------------------------------------------

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"

highlight htmlArg                                   guifg=#45C8B0 guibg=#000000
highlight htmlBold guifg=#5a189a guibg=#5a189a
highlight htmlEndTag                                guifg=#589BD9 guibg=#000000
highlight htmlH1                                    guifg=#CFD2D5 guibg=#000000
highlight htmlH2                                    guifg=#CFD2D5 guibg=#000000
highlight htmlH3                                    guifg=#CFD2D5 guibg=#000000
highlight htmlH4                                    guifg=#CFD2D5 guibg=#000000
highlight htmlH5                                    guifg=#CFD2D5 guibg=#000000
highlight htmlH6                                    guifg=#CFD2D5 guibg=#000000
highlight htmlItalic guifg=#589BD9 guibg=#7400b8
highlight htmlLink                                  guifg=#CFD2D5 guibg=#000000
highlight htmlSpecialChar                           guifg=#589BD9 guibg=#000000
highlight htmlSpecialTagName                        guifg=#589BD9 guibg=#000000
highlight htmlTag                                   guifg=#589BD9 guibg=#000000
highlight htmlTagN                                  guifg=#CFD2D5 guibg=#000000
highlight htmlTagName                               guifg=#589BD9 guibg=#000000
highlight htmlTitle                                 guifg=#CFD2D5 guibg=#000000
highlight htmlError      guifg=#589BD9 guibg=#7400b8
highlight htmlString                                guifg=#D79E83 guibg=#000000
highlight htmlValue      guifg=#589BD9 guibg=#7400b8
highlight htmlTagError   guifg=#589BD9 guibg=#7400b8
highlight htmlEvent      guifg=#589BD9 guibg=#7400b8
highlight htmlCssDefinition guifg=#589BD9 guibg=#7400b8
highlight htmlMathTagName guifg=#589BD9 guibg=#7400b8
highlight htmlSvgTagName guifg=#589BD9 guibg=#7400b8
highlight htmlMath       guifg=#589BD9 guibg=#7400b8
highlight htmlSvg        guifg=#589BD9 guibg=#7400b8
highlight htmlCommentError guifg=#589BD9 guibg=#7400b8
highlight htmlComment                               guifg=#FF0000 guibg=#000000
highlight htmlCommentNested guifg=#589BD9 guibg=#7400b8
highlight htmlPreStmt    guifg=#589BD9 guibg=#7400b8
highlight htmlPreError   guifg=#589BD9 guibg=#7400b8
highlight htmlPreAttr    guifg=#589BD9 guibg=#7400b8
highlight htmlPreProc    guifg=#589BD9 guibg=#7400b8
highlight htmlPreProcAttrError guifg=#589BD9 guibg=#7400b8
highlight htmlPreProcAttrName guifg=#589BD9 guibg=#7400b8
highlight htmlStrike    guifg=#589BD9 guibg=#7400b8 term=strikethrough cterm=strikethrough gui=strikethrough
highlight htmlBoldUnderline guifg=#589BD9 guibg=#7400b8 term=bold,underline cterm=bold,underline gui=bold,underline
highlight htmlBoldItalic guifg=#589BD9 guibg=#7400b8 term=bold,italic cterm=bold,italic gui=bold,italic
highlight htmlBoldUnderlineItalic guifg=#589BD9 guibg=#7400b8 term=bold,underline,italic cterm=bold,underline,italic gui=bold,underline,italic
highlight htmlBoldItalicUnderline guifg=#589BD9 guibg=#7400b8
highlight htmlUnderlineBold guifg=#589BD9 guibg=#7400b8
highlight htmlUnderlineItalic guifg=#589BD9 guibg=#7400b8 term=underline,italic cterm=underline,italic gui=underline,italic
highlight htmlUnderline  guifg=#589BD9 guibg=#7400b8 term=underline cterm=underline gui=underline
highlight htmlUnderlineBoldItalic guifg=#589BD9 guibg=#7400b8
highlight htmlUnderlineItalicBold guifg=#589BD9 guibg=#7400b8
highlight htmlItalicBold guifg=#589BD9 guibg=#7400b8
highlight htmlItalicUnderline guifg=#589BD9 guibg=#7400b8
highlight htmlItalicBoldUnderline guifg=#589BD9 guibg=#7400b8
highlight htmlItalicUnderlineBold guifg=#589BD9 guibg=#7400b8
highlight htmlLeadingSpace                          guifg=#CFD2D5 guibg=#000000
highlight htmlHead                                  guifg=#CFD2D5 guibg=#000000
highlight htmlCssStyleComment guifg=#589BD9 guibg=#7400b8
highlight htmlScriptTag                             guifg=#589BD9 guibg=#000000
highlight htmlEventSQ    guifg=#589BD9 guibg=#7400b8
highlight htmlEventDQ    guifg=#589BD9 guibg=#7400b8
highlight htmlStyleArg   guifg=#589BD9 guibg=#7400b8
highlight htmlHighlight  guifg=#589BD9 guibg=#7400b8
highlight htmlHighlightSkip guifg=#589BD9 guibg=#7400b8
highlight htmlStatement  guifg=#589BD9 guibg=#7400b8
highlight htmlCommentPart guifg=#589BD9 guibg=#7400b8

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"



"------------------------------------------------------------------------------
"  JSON
"------------------------------------------------------------------------------

highlight jsonNoise                                     guifg=#CFD2D5
highlight jsonKeyword                                   guifg=#589bd9
highlight jsonKeywordMatch                              guifg=#CFD2D5
highlight jsonQuote                                     guifg=#CFD2D5
highlight jsonString                                    guifg=#CFD2D5
highlight jsonStringMatch guifg=black guibg=#f9f9f9
highlight jsonEscape                                    guifg=#589bd9
highlight jsonStringSQError guifg=black guibg=#ff6392
highlight jsonNumber     guifg=black guibg=#db7c26
highlight jsonNoQuotesError guifg=black guibg=#c32f27
highlight jsonTripleQuotesError guifg=black guibg=#ee6055
highlight jsonNumError   guifg=black guibg=#60d394
highlight jsonCommentError guifg=black guibg=#aaf683
highlight jsonSemicolonError guifg=black guibg=#ffd97d
highlight jsonTrailingCommaError guifg=black guibg=#ff9b85
highlight jsonMissingCommaError guifg=black guibg=#694873
highlight jsonPadding    guifg=black guibg=#8b728e
highlight jsonBoolean                                   guifg=#589bd9
highlight jsonNull       guifg=black guibg=#007f5f
highlight jsonBraces                                    guifg=#CFD2D5
highlight jsonFold       guifg=black guibg=#d4d700
highlight jsonTest       guifg=black guibg=#eeef20



"------------------------------------------------------------------------------
"  Lua
"------------------------------------------------------------------------------

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"

highlight luaMetaMethod  guifg=#ff006e guibg=#ccd5ae
highlight luaParenError  guifg=#ff006e guibg=#d4a373
highlight luaParen       guifg=#ff006e guibg=#e63946
highlight luaError       guifg=#ff006e guibg=#8ecae6
highlight luaFunction                                          guifg=#589BD9
highlight luaFunctionBlock guifg=#ff006e guibg=#457b9d
highlight luaCondElse    guifg=#ff006e guibg=#ffb703
highlight luaCondEnd     guifg=#ff006e guibg=#ffafcc
highlight luaCond                                              guifg=#589BD9
highlight luaCondElseif  guifg=#ff006e guibg=#ff006e
highlight luaCondStart   guifg=#ff006e guibg=#8338ec
highlight luaStatement                                          guifg=#589BD9
highlight luaBlock       guifg=#ff006e guibg=#84a98c
highlight luaRepeat      guifg=#ff006e guibg=#52796f
highlight luaRepeatBlock guifg=#ff006e guibg=#2f3e46
highlight luaWhile       guifg=#ff006e guibg=#003049
highlight luaFor         guifg=#ff006e guibg=#d62828
highlight luaLabel       guifg=#ff006e guibg=#f77f00
highlight luaOperator                                           guifg=#589BD9
highlight luaSymbolOperator                                     guifg=#CFD2D5
highlight luaTodo        guifg=#ff006e guibg=#ddb892
highlight luaComment                                            guifg=#4FA544
highlight luaInnerComment guifg=#ff006e guibg=#7f5539
highlight luaCommentDelimiter guifg=#ff006e guibg=#9c6644
highlight luaConstant                                           guifg=#C064C7
highlight luaSpecial     guifg=#ff006e guibg=#9b5de5
highlight luaString2                                            guifg=#D79E83
highlight luaStringDelimiter                                    guifg=#D79E83
highlight luaString                                             guifg=#D79E83
highlight luaNumber                                             guifg=#A5C25C
highlight luaTable                                              guifg=#CFD2D5
highlight luaTableBlock  guifg=#ff006e guibg=#ff99c8
highlight luaFunc                                               guifg=#E8BF6A



"------------------------------------------------------------------------------
"  Markdown
"------------------------------------------------------------------------------

highlight markdownBlockquote guifg=#589BD9 guibg=#c8553d
highlight markdownBold                   cterm=bold guifg=#CFD2D5 guibg=#000000
highlight markdownBoldDelimiter                     guifg=#589BD9 guibg=#000000
highlight markdownCode                              guifg=#4FA544 guibg=#000000
highlight markdownCodeBlock                         guifg=#4FA544 guibg=#000000
highlight markdownCodeDelimiter                     guifg=#589BD9 guibg=#000000
highlight markdownH1                                guifg=#589BD9 guibg=#000000
highlight markdownH2                                guifg=#589BD9 guibg=#000000
highlight markdownH3                                guifg=#589BD9 guibg=#000000
highlight markdownH4                                guifg=#589BD9 guibg=#000000
highlight markdownH5                                guifg=#589BD9 guibg=#000000
highlight markdownH6                                guifg=#589BD9 guibg=#000000
highlight markdownHeadingDelimiter                  guifg=#589BD9 guibg=#000000
highlight markdownHeadingRule guifg=#589BD9 guibg=#c8553d
highlight markdownId guifg=#589BD9 guibg=#c8553d
highlight markdownIdDeclaration guifg=#589BD9 guibg=#c8553d
highlight markdownIdDelimiter guifg=#589BD9 guibg=#c8553d
highlight markdownItalic guifg=#589BD9 guibg=#c8553d
highlight markdownLinkDelimiter                     guifg=#CFD2D5 guibg=#000000
highlight markdownLinkText                          guifg=#CFD2D5 guibg=#000000
highlight markdownListMarker                        guifg=#589BD9 guibg=#000000
highlight markdownOrderedListMarker                 guifg=#589BD9 guibg=#000000
highlight markdownRule guifg=#589BD9 guibg=#c8553d
highlight markdownUrl                               cterm=underline guifg=#287BDE



"------------------------------------------------------------------------------
"  PHP
"------------------------------------------------------------------------------

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"
highlight phpTodo       cterm=bold,italic,underline guifg=#FF0000 guibg=#000000
highlight phpComment    cterm=bold,italic,underline guifg=#FF0000 guibg=#000000
highlight phpRegion                                 guifg=#CFD2D5 guibg=#000000
highlight phpInclude                                guifg=#589BD9 guibg=#000000
highlight phpClass                                  guifg=#45C8B0 guibg=#000000
highlight phpClasses                                guifg=#45C8B0 guibg=#000000
highlight phpFunction                               guifg=#E8BF6A guibg=#000000
highlight phpType                                   guifg=#589BD9 guibg=#000000
highlight phpKeyword                                guifg=#589BD9 guibg=#000000
highlight phpVarSelector                            guifg=#C064C7 guibg=#000000
highlight phpIdentifier                             guifg=#C064C7 guibg=#000000
highlight phpMethod                                 guifg=#E8BF6A guibg=#000000
highlight phpBoolean                                guifg=#589BD9 guibg=#000000
highlight phpParent                                 guifg=#CFD2D5 guibg=#000000
highlight phpOperator                               guifg=#CFD2D5 guibg=#000000
highlight phpUseNamespaceSeparator guifg=black guibg=#5aa9e6
highlight phpClassNamespaceSeparator guifg=black guibg=#f9f9f9
highlight phpDocTags                                guifg=#589BD9 guibg=#000000
highlight phpDocParam guifg=black guibg=#5aa9e6
highlight phpInnerHtmlSpecialChar guifg=black guibg=#7fc8f8
highlight phpInnerHtmlTagN guifg=black guibg=#f9f9f9
highlight phpInnerHtmlTagError guifg=black guibg=#ffe45e
highlight phpInnerHtmlString guifg=black guibg=#ff6392
highlight phpInnerHtmlValue guifg=black guibg=#ff8811
highlight phpInnerHtmlEvent guifg=black guibg=#f4d06f
highlight phpInnerHtmlCssDefinition guifg=black guibg=#fff8f0
highlight phpInnerHtmlCommentError guifg=black guibg=#9dd9d2
highlight phpInnerHtmlCommentNested guifg=black guibg=#392f5a
highlight phpInnerHtmlPreStmt guifg=black guibg=#05668d
highlight phpInnerHtmlPreError guifg=black guibg=#427aa1
highlight phpInnerHtmlPreAttr guifg=black guibg=#ebf2fa
highlight phpInnerHtmlPreProcAttrError guifg=black guibg=#679436
highlight phpInnerHtmlPreProcAttrName guifg=black guibg=#a5be00
highlight phpInnerHtmlBoldUnderline guifg=black guibg=#ff206e
highlight phpInnerHtmlBoldItalic guifg=black guibg=#fbff12
highlight phpInnerHtmlBoldUnderlineItalic guifg=black guibg=#41ead4
highlight phpInnerHtmlBoldItalicUnderline guifg=black guibg=#7c9eb2
highlight phpInnerHtmlUnderlineBold guifg=black guibg=#77bfa3
highlight phpInnerHtmlUnderlineItalic guifg=black guibg=#52528c
highlight phpInnerHtmlUnderlineBoldItalic guifg=black guibg=#372554
highlight phpInnerHtmlUnderlineItalicBold guifg=black guibg=#231123
highlight phpInnerHtmlItalicBold guifg=black guibg=#84dcc6
highlight phpInnerHtmlItalicUnderline guifg=black guibg=#a5ffd6
highlight phpInnerHtmlItalicBoldUnderline guifg=black guibg=#ffa69e
highlight phpInnerHtmlItalicUnderlineBold guifg=black guibg=#ff686b
highlight phpInnerHtmlTag guifg=black guibg=#2f6690
highlight phpInnerHtmlEndTag guifg=black guibg=#3a7ca5
highlight phpInnerHtmlPreProc guifg=black guibg=#d9dcd6
highlight phpInnerHtmlComment guifg=#ffffff guibg=#16425b
highlight phpInnerHtmlLeadingSpace guifg=black guibg=#81c3d7
highlight phpInnerJavaScript guifg=black guibg=#07beb8
highlight phpInnerHtmlLink guifg=black guibg=#3dccc7
highlight phpInnerHtmlTitle guifg=black guibg=#68d8d6
highlight phpInnerCssStyle guifg=black guibg=#9ceaef
highlight phpInnerHtmlArg guifg=black guibg=#c4fff9
highlight phpInnerHtmlEventSQ guifg=black guibg=#cc5803
highlight phpInnerHtmlEventDQ guifg=black guibg=#e2711d
highlight phpRegionAsp    guifg=black guibg=#ff9505
highlight phpRegionSc     guifg=black guibg=#ffb627
highlight phpEnvVar       guifg=black guibg=#ffc971
highlight phpIntVar       guifg=black guibg=#7bdff2
highlight phpCoreConstant  guifg=black guibg=#b2f7ef
highlight phpConstant                               guifg=#C064C7 guibg=#000000
highlight phpFunctions                              guifg=#E8BF6A guibg=#000000
highlight phpMethods                                guifg=#E8BF6A guibg=#000000
highlight phpConditional                            guifg=#589BD9 guibg=#000000
highlight phpRepeat                                 guifg=#589BD9 guibg=#000000
highlight phpLabel        guifg=black guibg=#a1cca5
highlight phpStatement                              guifg=#589BD9 guibg=#000000
highlight phpStructure                              guifg=#589BD9 guibg=#000000
highlight phpRelation                               guifg=#CFD2D5 guibg=#000000
highlight phpMemberSelector                         guifg=#8fb996 guibg=#000000
highlight phpIdentifierSimply  guifg=black guibg=#8fb996
highlight phpIdentifierComplexP guifg=black guibg=#709775
highlight phpIdentifierComplex guifg=black guibg=#415d43
highlight phpBrackets                               guifg=#CFD2D5 guibg=#000000
highlight phpInterpSimpleError  guifg=#ffffff guibg=#086375
highlight phpInterpBogusDollarCurley  guifg=black guibg=#1dd3b0
highlight phpInterpSimpleBracketsInner  guifg=black guibg=#affc41
highlight phpInterpSimpleBrackets  guifg=black guibg=#b2ff9e
highlight phpInterpSimple  guifg=black guibg=#003459
highlight phpInterpVarname  guifg=black guibg=#007ea7
highlight phpInterpMethodName  guifg=black guibg=#00a8e8
highlight phpInterpSimpleCurly  guifg=black guibg=#d4e09b
highlight phpInterpDollarCurley1Helper  guifg=black guibg=#f6f4d2
highlight phpInterpDollarCurly1  guifg=black guibg=#cbdfbd
highlight phpInterpDollarCurley2Helper  guifg=black guibg=#f19c79
highlight phpInterpDollarCurly2  guifg=black guibg=#a44a3f
highlight phpInterpComplex  guifg=black guibg=#ef233c
highlight phpMethodsVar                             guifg=#E8BF6A guibg=#000000
highlight phpDefine                                 guifg=#589BD9 guibg=#000000
highlight phpFloatError  guifg=black guibg=#d5f2e3
highlight phpFloat  guifg=black guibg=#73ba9b
highlight phpNumber                                 guifg=#A5C25C guibg=#000000
highlight phpOctalError  guifg=black guibg=#003e1f
highlight phpBinaryError  guifg=black guibg=#d90429
highlight phpBackslashSequences  guifg=black guibg=#006466
highlight phpBackslashDoubleQuote  guifg=black guibg=#4d194d
highlight phpBackslashSingleQuote  guifg=black guibg=#ff206e
highlight phpStringDouble                           guifg=#D79E83 guibg=#000000
highlight phpBacktick   guifg=black guibg=#1b3a4b
highlight phpStringSingle                           guifg=#D79E83 guibg=#000000
highlight phpHereDoc   guifg=black guibg=#065a60
highlight phpNowDoc   guifg=black guibg=#0b525b
highlight phpException                              guifg=#5aa9e6 guibg=#000000
highlight phpParentError  guifg=black guibg=#641220
highlight phpStorageClass                           guifg=#589BD9 guibg=#000000
highlight phpFoldFunction  guifg=black guibg=#6e1423
highlight phpFoldClass  guifg=black guibg=#85182a
highlight phpFoldInterface  guifg=black guibg=#a11d33
highlight phpFoldTry  guifg=black guibg=#b21e35
highlight phpFoldCatch  guifg=black guibg=#c71f37
highlight phpSCKeyword  guifg=black guibg=#f79256
highlight phpFoldHtmlInside  guifg=black guibg=#fbd1a2
highlight phpFCKeyword  guifg=black guibg=#7dcfb6
highlight phpSpecialFunction                        guifg=#E8BF6A guibg=#000000
highlight phpInterfaces  guifg=black guibg=#1d4e89
highlight phpAssignByRef  guifg=black guibg=#fcd581
highlight phpComparison                             guifg=#CFD2D5 guibg=#000000
highlight phpDocCustomTags                          guifg=#589BD9 guibg=#000000
highlight phpDocTodo                                guifg=#FF0000 guibg=#000000
highlight phpBaselib   guifg=black guibg=#895737
highlight phpIdentifierConst  guifg=black guibg=#4e148c



"------------------------------------------------------------------------------
"  VIM
"------------------------------------------------------------------------------

" Blue
"highlight vimCommand guifg=#589BD9
"highlight vimOption guifg=#589BD9

" Purple
"highlight vimVar guifg=#C064C7

" Green
"highlight vimNumber guifg=#A5C25C
let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"
highlight vimTodo                     cterm=bold,italic,underline guifg=#FF0000
highlight vimCommand                                              guifg=#589BD9
highlight vimStdPlugin   guifg=#1d3557 guibg=#e9edc9
highlight vimOption                                               guifg=#45C8B0
highlight vimErrSetting  guifg=#1d3557 guibg=#faedcd
highlight vimAutoEvent                                            guifg=#45C8B0
highlight vimGroup       guifg=#45C8B0 guibg=#e63946
highlight vimHLGroup     guifg=#4FA544 guibg=#f1faee
highlight vimFuncName                                             guifg=#E8BF6A
highlight vimGlobal      guifg=#45C8B0 guibg=#457b9d
highlight vimSubst       guifg=#45C8B0 guibg=#1d3557
highlight vimComment                                              guifg=#FF0000
highlight vim9Comment                                             guifg=#FF0000
highlight vimNumber                                               guifg=#A5C25C
highlight vimAddress     guifg=#ff006e guibg=#B46060
highlight vimAutoCmd                                              guifg=#589BD9
highlight vimEcho        guifg=#ff006e guibg=#023047
highlight vimIsCommand                                            guifg=#589BD9
highlight vimExtCmd      guifg=#589BD9 guibg=#fb8500
highlight vimFilter      guifg=#ff006e guibg=#264653
highlight vimLet                                                  guifg=#589BD9
highlight vimMap                                                  guifg=#589BD9
highlight vimMark        guifg=#ff006e guibg=#f4a261
highlight vimSet                                                  guifg=#CFD2D5
highlight vimSyntax                                               guifg=#45C8B0
highlight vimUserCmd                                              guifg=#CFD2D5
highlight vimCmdSep                                               guifg=#CFD2D5
highlight vimVar                                                  guifg=#C064C7
highlight vimFBVar       guifg=#1d3557 guibg=#1d3557
highlight vimInsert      guifg=#ff006e guibg=#283618
highlight vimBehaveModel guifg=#1d3557 guibg=#fefae0
highlight vimBehaveError guifg=#4FA544 guibg=#dda15e
highlight vimBehave      guifg=#ff006e guibg=#bc6c25
highlight vimFTCmd                                                guifg=#589BD9
highlight vimFTOption                                             guifg=#CFD2D5
highlight vimFTError     guifg=#1d3557 guibg=#ffc43d
highlight vimFiletype                                             guifg=#CFD2D5
highlight vimAugroup                                              guifg=#CFD2D5
highlight vimExecute                                              guifg=#CFD2D5
highlight vimNotFunc                                              guifg=#589BD9
highlight vimFunction    guifg=#ff006e guibg=#218380
highlight vimFunctionError guifg=#005f73 guibg=#ffffff
highlight vimLineComment                                          guifg=#FF0000
highlight vimSpecFile                                             guifg=#CFD2D5
highlight vimOper                                                 guifg=#CFD2D5
highlight vimOperParen                                            guifg=#CFD2D5
highlight vimString                                               guifg=#D79E83
highlight vimRegister    guifg=#ff006e guibg=#ffcdb2
highlight vimCmplxRepeat guifg=#4FA544 guibg=#ffb4a2
highlight vimRegion      guifg=#ff006e guibg=#e5989b
highlight vimSynLine     guifg=#ff006e guibg=#b5838d
highlight vimNotation                                             guifg=#589BD9
highlight vimCtrlChar    guifg=#ff006e guibg=#005f73
highlight vimFuncVar     guifg=#005f73 guibg=#9b2226
highlight vimContinue                                             guifg=#CFD2D5
highlight vimSetEqual                                             guifg=#CFD2D5
highlight vimAugroupKey                                           guifg=#589BD9
highlight vimAugroupError guifg=#ff006e guibg=#94d2bd
highlight vimEnvvar                                               guifg=#C064C7
highlight vimFunc        guifg=#ff006e guibg=#6a994e
highlight vimType        guifg=#589BD9 guibg=#a7c957
highlight vimParenSep                                             guifg=#CFD2D5
highlight vimoperStar    guifg=#a7c957 guibg=#bc4749
highlight vimSep                                                  guifg=#CFD2D5
highlight vimOperError   guifg=#a7c957 guibg=#fb5607
highlight vimFuncKey     guifg=#ff006e guibg=#ff006e
highlight vimFuncSID     guifg=#ff006e guibg=#8338ec
highlight vimAbb         guifg=#ff006e guibg=#8d99ae
highlight vimEchoHL     guifg=#ff006e guibg=#589BD9
highlight vimHighlight                                            guifg=#589bd9
highlight vimLetHereDoc  guifg=#589BD9 guibg=#d90429
highlight vimNorm        guifg=#ff006e guibg=#006d77
highlight vimSearch                                               guifg=#CFD2D5
highlight vimUnmap       guifg=#ff006e guibg=#f15bb5
highlight vimUserCommand                                          guifg=#CFD2D5
highlight vimFuncBody    guifg=#ff006e guibg=#00bbf9
highlight vimFuncBlank   guifg=#ff006e guibg=#FFBF9B
highlight vimPattern     guifg=#ff006e guibg=#ffb5a7
highlight vimSpecFileMod guifg=#ff006e guibg=#fcd5ce
highlight vimEscapeBrace guifg=#ff006e guibg=#f8edeb
highlight vimSetString   guifg=#ff006e guibg=#f9dcc4
highlight vimSubstRep    guifg=#ff006e guibg=#fec89a
highlight vimSubstRange      guifg=#ff006e guibg=#80b918
highlight vimUserAttrb   guifg=#ff006e guibg=#80b918
highlight vimUserAttrbError guifg=#ff006e guibg=#80b918
highlight vimComFilter   guifg=#ff006e guibg=#adb5bd
highlight vimUserAttrbKey guifg=#ff006e guibg=#6c757d
highlight vimUserAttrbCmplt guifg=#ff006e guibg=#495057
highlight vimUserCmdError guifg=#ff006e guibg=#495057
highlight vimUserAttrbCmpltFunc guifg=#ff006e guibg=#ff595e
highlight vimCommentString guifg=#ff006e guibg=#ffca3a
highlight vimPatSepErr   guifg=#ff006e guibg=#8ac926
highlight vimPatSep      guifg=#ff006e guibg=#1982c4
highlight vimPatSepZ     guifg=#ff006e guibg=#6a4c93
highlight vimPatSepZone  guifg=#ff006e guibg=#f6bd60
highlight vimPatSepR     guifg=#ff006e guibg=#f7ede2
highlight vimPatRegion   guifg=#06d6a0 guibg=#f5cac3
highlight vimNotPatSep   guifg=#ff006e guibg=#84a59d
highlight vimEscape                                               guifg=#CFD2D5
highlight vimStringEnd                                            guifg=#D79E83
highlight vimStringCont         guifg=#ff006e guibg=#06d6a0
highlight vimSubstTwoBS  guifg=#06d6a0 guibg=#efc3e6
highlight vimSubstSubstr guifg=#ff006e guibg=#9a031e
highlight vimCollection  guifg=#ff006e guibg=#b8bedd
highlight vimSubstPat    guifg=#ff006e guibg=#8a817c
highlight vimSubst1      guifg=#ff006e guibg=#bcb8b1
highlight vimSubst2      guifg=#ff006e guibg=#fb8b24
highlight vimSubstDelim  guifg=#06d6a0 guibg=#e0afa0
highlight vimSubstRep4   guifg=#06d6a0 guibg=#e36414
highlight vimSubstFlagErr guifg=#ff006e guibg=#4f000b
highlight vimCollClass   guifg=#ff006e guibg=#720026
highlight vimCollClassErr guifg=#ff006e guibg=#ce4257
highlight vimSubstFlags  guifg=#ff006e guibg=#ff7f51
highlight vimMarkNumber  guifg=#ff006e guibg=#ff9b54
highlight vimPlainMark   guifg=#ff006e guibg=#6f1d1b
highlight vimRange       guifg=#ff006e guibg=#bb9457
highlight vimPlainRegister guifg=#ff006e guibg=#432818
highlight vimSetMod      guifg=#ff006e guibg=#99582a
highlight vimSetSep                                               guifg=#CFD2D5
highlight vimLetHereDocStart guifg=#ff006e guibg=#582f0e
highlight vimLetHereDocStop guifg=#ff006e guibg=#7f4f24
highlight vimMapMod                                               guifg=#C064C7
highlight vimMapLhs                                               guifg=#45C8B0
highlight vimAutoCmdSpace                                         guifg=#000000
highlight vimAutoEventList                                        guifg=#CFD2D5
highlight vimAutoCmdSfxList                                       guifg=#CFD2D5
highlight vimAutoCmdMod  guifg=#ff006e guibg=#656d4a
highlight vimEchoHLNone  guifg=#ff006e guibg=#414833
highlight vimMapBang     guifg=#ff006e guibg=#333d29
highlight vimMapRhs                                               guifg=#CFD2D5
highlight vimMapModKey                                          guifg=#C064C7
highlight vimMapModErr   guifg=#ff006e guibg=#5a189a
highlight vimMapRhsExtend guifg=#ff006e guibg=#9d4edd
highlight vimMenuBang    guifg=#ff006e guibg=#c77dff
highlight vimMenuPriority guifg=#ff006e guibg=#e0aaff
highlight vimMenuName    guifg=#ff006e guibg=#ffadad
highlight vimMenuMod     guifg=#06d6a0 guibg=#ffd6a5
highlight vimMenuNameMore guifg=#06d6a0 guibg=#fdffb6
highlight vimMenuMap     guifg=#ff006e guibg=#caffbf
highlight vimMenuRhs     guifg=#ff006e guibg=#B46060
highlight vimBracket                                            guifg=#CFD2D5
highlight vimFuncEcho    guifg=#ff006e guibg=#bdb2ff
highlight vimUserFunc                                           guifg=#E8BF6A
highlight vimUsrCmd                                             guifg=#589bd9
highlight vimElseIfErr   guifg=#589bd9 guibg=#ef476f
highlight vimBufnrWarn   guifg=#ff006e guibg=#ffd166
highlight vimNormCmds    guifg=#ff006e guibg=#06d6a0
highlight vimGroupSpecial guifg=#ff006e guibg=#118ab2
highlight vimGroupList   guifg=#ff006e guibg=#073b4c
highlight vimSynError    guifg=#ff006e guibg=#003566
highlight vimSynContains guifg=#003566 guibg=#ffc300
highlight vimSynKeyContainedin guifg=#ff006e guibg=#ffd60a
highlight vimSynNextgroup guifg=#ff006e guibg=#355070
highlight vimSynType                                guifg=#589bd9 guibg=#000000
highlight vimAuSyntax    guifg=#355070 guibg=#b56576
highlight vimSynCase     guifg=#ff006e guibg=#e56b6f
highlight vimSynCaseError guifg=#ff006e guibg=#eaac8b
highlight vimClusterName guifg=#ff006e guibg=#16697a
highlight vimGroupName   guifg=#ff006e guibg=#489fb5
highlight vimGroupAdd    guifg=#ff006e guibg=#617143
highlight vimGroupRem    guifg=#45C8B0 guibg=#ede7e3
highlight vimIskList     guifg=#ff006e guibg=#ffa62b
highlight vimIskSep      guifg=#45C8B0 guibg=#390099
highlight vimSynKeyOpt   guifg=#45C8B0 guibg=#9e0059
highlight vimSynKeyRegion guifg=#ff006e guibg=#45C8B0
highlight vimMtchComment guifg=#45C8B0 guibg=#ff5400
highlight vimSynMtchOpt  guifg=#ff006e guibg=#ffbd00
highlight vimSynRegPat   guifg=#45C8B0 guibg=#ffe5ec
highlight vimSynMatchRegion guifg=#ff006e guibg=#355070
highlight vimSynMtchCchar guifg=#45C8B0 guibg=#6d597a
highlight vimSynMtchGroup guifg=#45C8B0 guibg=#b56576
highlight vimSynPatRange guifg=#45C8B0 guibg=#e56b6f
highlight vimSynNotPatRange guifg=#45C8B0 guibg=#eaac8b
highlight vimSynRegOpt   guifg=#ff006e guibg=#16697a
highlight vimSynReg      guifg=#ff006e guibg=#489fb5
highlight vimSynMtchGrp  guifg=#ff006e guibg=#82c0cc
highlight vimSynRegion   guifg=#45C8B0 guibg=#ede7e3
highlight vimSynPatMod      guifg=#ff006e guibg=#ffa62b
highlight vimSyncC       guifg=#45C8B0 guibg=#390099
highlight vimSyncLines   guifg=#45C8B0 guibg=#9e0059
highlight vimSyncMatch   guifg=#45C8B0 guibg=#ffbd00
highlight vimSyncError   guifg=#ff006e guibg=#ff5400
highlight vimSyncLinecont guifg=#45C8B0 guibg=#ffe5ec
highlight vimSyncRegion  guifg=#CFD2D5 guibg=#ffc2d1
highlight vimSyncGroupName guifg=#CFD2D5 guibg=#ffb3c6
highlight vimSyncKey     guifg=#ff006e guibg=#ff8fab
highlight vimSyncGroup   guifg=#ff006e guibg=#fb6f92
highlight vimSyncNone    guifg=#ff006e guibg=#8cb369
highlight vimHiLink      guifg=#ff006e guibg=#f4e285
highlight vimHiClear     guifg=#CFD2D5 guibg=#f4a259
highlight vimHiKeyList                                            guifg=#CFD2D5
highlight vimHiCtermError guifg=#ff006e guibg=#bc4b51
highlight vimHiBang      guifg=#ff006e guibg=#3c6e71
highlight vimHiGroup                                              guifg=#45C8B0
highlight vimHiAttrib                                             guifg=#CFD2D5
highlight vimFgBgAttrib  guifg=#ff006e guibg=#284b63
highlight vimHiAttribList guifg=#ff006e guibg=#e5d9f2
highlight vimHiCtermColor guifg=#ff006e guibg=#f5efff
highlight vimHiFontname  guifg=#ff006e guibg=#cdc1ff
highlight vimHiGuiFontname guifg=#ff006e guibg=#a594f9
highlight vimHiGuiRgb    guifg=#01161e guibg=#7371fc
highlight vimHiTerm     guifg=#ff006e guibg=#00296b
highlight vimHiCTerm                                              guifg=#C064C7
highlight vimHiStartStop guifg=#ff006e guibg=#fdc500
highlight vimHiCtermFgBg guifg=#ff006e guibg=#ffd500
highlight vimHiCtermul   guifg=#ff006e guibg=#01161e
highlight vimHiGui       guifg=#ff006e guibg=#124559
highlight vimHiGuiFont   guifg=#ff006e guibg=#598392
highlight vimHiGuiFgBg                                            guifg=#C064C7
highlight vimHiKeyError  guifg=#ff006e guibg=#eff6e0
highlight vimHiTermcap   guifg=#ff006e guibg=#31572c
highlight vimHiNmbr      guifg=#ff006e guibg=#4f772d
highlight vimCommentTitle                                         guifg=#FF0000
highlight vim9LineComment guifg=#005f73 guibg=#ecf39e
highlight vimCommentTitleLeader                                   guifg=#FF0000
highlight vimSearchDelim                                          guifg=#CFD2D5
highlight vimLuaRegion   guifg=#ff006e guibg=#8f2d56
highlight vimScriptDelim guifg=#011627 guibg=#218380
highlight vimPerlRegion  guifg=#ff006e guibg=#73d2de
highlight HighlightedyankRegion guifg=#ff006e guibg=#73d2de

"-----------------------------------------------------------------------
"  Git
"-----------------------------------------------------------------------

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"



highlight DiffAdd                                 guifg=#4FA544 guibg=#000000
highlight DiffChange                              guifg=#E8BF6A guibg=#000000



"-----------------------------------------------------------------------
"  XML
"-----------------------------------------------------------------------

highlight xmlError       guifg=#245953 guibg=#62CDFF
highlight xmlEntity      guifg=#245953 guibg=#62CDFF
highlight xmlString                                 guifg=#D79E83 guibg=#000000
highlight xmlAttribPunct                            guifg=#CFD2D5 guibg=#000000
highlight xmlEqual                                  guifg=#CFD2D5 guibg=#000000
highlight xmlAttrib                                 guifg=#45C8B0 guibg=#000000
highlight xmlNamespace   guifg=#245953 guibg=#62CDFF
highlight xmlTagName                                guifg=#589BD9 guibg=#000000
highlight xmlTag                                    guifg=#589BD9 guibg=#000000
highlight xmlEndTag      guifg=#245953 guibg=#62CDFF
highlight xmlCdata      guifg=#245953 guibg=#62CDFF
highlight xmlRegion                                 guifg=#CFD2D5 guibg=#000000
highlight xmlComment                                guifg=#FF0000 guibg=#000000
highlight xmlProcessing                             guifg=#CFD2D5 guibg=#000000
highlight xmlEntityPunct guifg=#245953 guibg=#62CDFF
highlight xmlCommentStart guifg=#245953 guibg=#62CDFF
highlight xmlCommentError guifg=#245953 guibg=#62CDFF
highlight xmlCommentPart guifg=#245953 guibg=#62CDFF
highlight xmlTodo                                   guifg=#FF0000 guibg=#000000
highlight xmlCdataStart  guifg=#245953 guibg=#62CDFF
highlight xmlCdataEnd    guifg=#245953 guibg=#62CDFF
highlight xmlCdataCdata  guifg=#245953 guibg=#62CDFF
highlight xmlProcessingDelim                                      guifg=#589BD9
highlight xmlDocTypeKeyword guifg=#245953 guibg=#62CDFF
highlight xmlInlineDTD   guifg=#245953 guibg=#62CDFF
highlight xmlDocTypeDecl                                          guifg=#589BD9
highlight xmlDocType     guifg=#245953 guibg=#62CDFF
highlight xmlSyncComment guifg=#245953 guibg=#62CDFF


"-----------------------------------------------------------------------
"  DTD
"-----------------------------------------------------------------------
highlight dtdFunction    guifg=#AA77FF guibg=#00235B
highlight dtdTag         guifg=#AA77FF guibg=#00235B
highlight dtdTagName     guifg=#AA77FF guibg=#00235B
highlight dtdError       guifg=#AA77FF guibg=#00235B
highlight dtdComment     guifg=#AA77FF guibg=#00235B
highlight dtdString      guifg=#AA77FF guibg=#00235B
highlight dtdAttrType    guifg=#AA77FF guibg=#00235B
highlight dtdAttrDef     guifg=#AA77FF guibg=#00235B
highlight dtdEnum        guifg=#AA77FF guibg=#00235B
highlight dtdParamEntityInst guifg=#AA77FF guibg=#00235B
highlight dtdParamEntityDecl guifg=#AA77FF guibg=#00235B
highlight dtdCard        guifg=#AA77FF guibg=#00235B
highlight dtdTodo        guifg=#AA77FF guibg=#00235B
highlight dtdParamEntityPunct guifg=#AA77FF guibg=#00235B
highlight dtdParamEntityDPunct guifg=#AA77FF guibg=#00235B
highlight dtdEntityPunct guifg=#AA77FF guibg=#00235B
highlight dtdEntity      guifg=#AA77FF guibg=#00235B
highlight dtdType        guifg=#AA77FF guibg=#00235B
highlight dtdConstant    guifg=#AA77FF guibg=#00235B



"-----------------------------------------------------------------------
"  JavaScript
"-----------------------------------------------------------------------
let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"
highlight javaScriptExpression guifg=#ff006e guibg=#617143
highlight javaScript                                              guifg=#CFD2D5
highlight javaScriptCommentTodo guifg=#ff006e guibg=#617143
highlight javaScriptLineComment                                   guifg=#FF0000
highlight javaScriptCommentSkip guifg=#ff006e guibg=#617143
highlight javaScriptComment                                       guifg=#FF0000
highlight javaScriptSpecial guifg=#ff006e guibg=#617143
highlight javaScriptStringD                                       guifg=#D79E83
highlight javaScriptStringS                                       guifg=#D79E83
highlight javaScriptEmbed guifg=#ff006e guibg=#617143
highlight javaScriptStringT guifg=#ff006e guibg=#617143
highlight javaScriptSpecialCharacter guifg=#ff006e guibg=#617143
highlight javaScriptNumber                                        guifg=#A5C25C
highlight javaScriptRegexpString guifg=#ff006e guibg=#617143
highlight javaScriptConditional guifg=#ff006e guibg=#617143
highlight javaScriptRepeat guifg=#ff006e guibg=#617143
highlight javaScriptBranch guifg=#ff006e guibg=#617143
highlight javaScriptOperator guifg=#ff006e guibg=#617143
highlight javaScriptType                                          guifg=#589BD9
highlight javaScriptStatement                                     guifg=#589BD9
highlight javaScriptBoolean                                       guifg=#589BD9
highlight javaScriptNull                                          guifg=#589BD9
highlight javaScriptIdentifier                                    guifg=#589BD9
highlight javaScriptLabel                                         guifg=#589BD9
highlight javaScriptException guifg=#ff006e guibg=#617143
highlight javaScriptMessage guifg=#ff006e guibg=#617143
highlight javaScriptGlobal guifg=#ff006e guibg=#617143
highlight javaScriptMember                                        guifg=#45C8B0
highlight javaScriptDeprecated guifg=#ff006e guibg=#617143
highlight javaScriptReserved                                      guifg=#589BD9
highlight javaScriptFunction                                      guifg=#E8BF6A
highlight javaScriptBraces                                        guifg=#CFD2D5
highlight javaScriptParens                                        guifg=#CFD2D5
highlight javaScriptCharacter guifg=#ff006e guibg=#617143
highlight javaScriptValue guifg=#ff006e guibg=#617143
highlight javaScriptError guifg=#ff006e guibg=#617143
highlight javaScrParenError guifg=#ff006e guibg=#617143
highlight javaScriptDebug guifg=#ff006e guibg=#617143
highlight javaScriptConstant guifg=#ff006e guibg=#617143
highlight jsComment      guifg=#ff006e guibg=#617143
highlight jsString       guifg=#ff006e guibg=#617143
highlight jsTemplateString guifg=#ff006e guibg=#617143
highlight jsObjectKeyString guifg=#ff006e guibg=#617143
highlight jsObjectStringKey guifg=#ff006e guibg=#617143
highlight jsClassStringKey guifg=#ff006e guibg=#617143
highlight javascriptString guifg=#ff006e guibg=#617143
highlight javascriptTemplate guifg=#ff006e guibg=#617143



"-----------------------------------------------------------------------
"  VisualBasic
"-----------------------------------------------------------------------
highlight vbConditional  guifg=#ff006e guibg=#DF7857
highlight vbOperator     guifg=#ff006e guibg=#DF7857
highlight vbBoolean      guifg=#ff006e guibg=#DF7857
highlight vbConst        guifg=#ff006e guibg=#DF7857
highlight vbRepeat       guifg=#ff006e guibg=#DF7857
highlight vbEvents       guifg=#ff006e guibg=#DF7857
highlight vbFunction     guifg=#ff006e guibg=#DF7857
highlight vbMethods      guifg=#ff006e guibg=#DF7857
highlight vbStatement    guifg=#ff006e guibg=#DF7857
highlight vbKeyword      guifg=#ff006e guibg=#DF7857
highlight vbTodo         guifg=#ff006e guibg=#DF7857
highlight vbTypes        guifg=#ff006e guibg=#DF7857
highlight vbDefine       guifg=#ff006e guibg=#DF7857
highlight vbNumber       guifg=#ff006e guibg=#DF7857
highlight vbFloat        guifg=#ff006e guibg=#DF7857
highlight vbString       guifg=#ff006e guibg=#DF7857
highlight vbComment      guifg=#ff006e guibg=#DF7857
highlight vbLineLabel    guifg=#ff006e guibg=#DF7857
highlight vbLineNumber   guifg=#ff006e guibg=#DF7857
highlight vbTypeSpecifier guifg=#ff006e guibg=#DF7857
highlight vbPreProc      guifg=#ff006e guibg=#DF7857
highlight vbError        guifg=#ff006e guibg=#DF7857
highlight vbIdentifier   guifg=#ff006e guibg=#DF7857



"-----------------------------------------------------------------------
"  YAML
"-----------------------------------------------------------------------

highlight yamlBlockMappingKey                       guifg=#589BD9 guibg=#000000
highlight yamlDocumentStart   guifg=#539165 guibg=#589BD9
highlight yamlAlias   guifg=#539165 guibg=#BBD6B8
highlight yamlAnchor   guifg=#539165 guibg=#FFD966
highlight yamlBlockScalar   guifg=#539165 guibg=#408E91
highlight yamlCollection   guifg=#539165 guibg=#867070
highlight yamlComment   guifg=#539165 guibg=#AA77FF
highlight yamlDirective   guifg=#539165 guibg=#2D2727
highlight yamlDocumentEnd   guifg=#539165 guibg=#1A5F7A
highlight yamlFlowMappingKey   guifg=#539165 guibg=#E11299
highlight yamlFlowCollection   guifg=#539165 guibg=#F5C6EC
highlight yamlFlowEntry   guifg=#539165 guibg=#7AA874
highlight yamlFlowScalar   guifg=#539165 guibg=#EDE9D5
highlight yamlKey   guifg=#539165 guibg=#4FA544
highlight yamlNode   guifg=#539165 guibg=#E4D0D0
highlight yamlPlainScalar                           guifg=#CFD2D5 guibg=#000000
highlight yamlTag   guifg=#539165 guibg=#E7B10A
highlight yamlText   guifg=#539165 guibg=#4FA544
highlight yamlBlockCollectionItemStart              guifg=#CFD2D5 guibg=#000000

let black      = "#000000"
let blue       = "#589BD9"
let gray       = "#606366"
let green      = "#4FA544"
let red        = "#FF0000"
let lightGreen = "#A5C25C"
let lightRed   = "#D79E83"
let linkBlue   = "#287BDE"
let orange     = "#E8BF6A"
let purple     = "#C064C7"
let turquoise  = "#45C8B0"
let white      = "#CFD2D5"




"------------------------------------------------------------------------------
"  Shell
"------------------------------------------------------------------------------

"highlight shDerefVar




"-----------------------------------------------------------------------
"  Stuff
"-----------------------------------------------------------------------
"highlight DiffDelete     guifg=#ff006e guibg=#73d2de
"highlight DiffText       guifg=#ff006e guibg=#617143
"highlight Conceal        guifg=#ff006e guibg=#617143
"highlight SpellBad       guifg=#ff006e guibg=#73d2de
"highlight SpellCap       guifg=#ff006e guibg=#73d2de
"highlight SpellRare      guifg=#ff006e guibg=#73d2de
"highlight SpellLocal     guifg=#ff006e guibg=#73d2de
"highlight TabLine        guifg=#ff006e guibg=#617143
"highlight TabLineSel     guifg=#ff006e guibg=#617143
"highlight TabLineFill    guifg=#ff006e guibg=#617143
"highlight CursorColumn   guifg=#ff006e guibg=#617143
"highlight QuickFixLine   guifg=#ff006e guibg=#617143
"highlight StatusLineTerm guifg=#ff006e guibg=#73d2de
"highlight StatusLineTermNC  guifg=#ff006e guibg=#73d2de
"highlight ToolbarLine     guifg=#ff006e guibg=#73d2de
"highlight ToolbarButton   guifg=#ff006e guibg=#73d2de
"highlight Statement       guifg=#ff006e guibg=#73d2de
"highlight Underlined      guifg=#ff006e guibg=#73d2de
"highlight Ignore          guifg=#ff006e guibg=#73d2de
"highlight Error           guifg=#ff006e guibg=#73d2de
"highlight Float          guifg=#ff006e guibg=#73d2de
"highlight Repeat         guifg=#ff006e guibg=#73d2de
"highlight Label          guifg=#ff006e guibg=#73d2de
"highlight Define         guifg=#ff006e guibg=#73d2de
"highlight Macro          guifg=#ff006e guibg=#73d2de
"highlight PreCondit      guifg=#ff006e guibg=#73d2de
"highlight StorageClass   guifg=#ff006e guibg=#73d2de
"highlight Structure      guifg=#ff006e guibg=#73d2de
"highlight Typedef        guifg=#ff006e guibg=#73d2de
"highlight Tag            guifg=#ff006e guibg=#617143
"highlight SpecialChar    guifg=#ff006e guibg=#617143
"highlight SpecialComment guifg=#ff006e guibg=#DF7857
"highlight Debug          guifg=#ff006e guibg=#73d2de
"highlight Noise          guifg=#ff006e guibg=#73d2de
"highlight None           guifg=#ff006e guibg=#73d2de




