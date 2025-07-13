"------------------------------------------------------------------------------
" MannyDark Color Scheme for Vim
"------------------------------------------------------------------------------



"------------------------------------------------------------------------------
" Color Palette Variables

let black      = '#191B1C'
let blue       = '#569CD6'
let blueLink   = '#287BDE'
let gray       = '#606366'
let grayDark   = '#252525'
let green      = '#4FA544'
let greenLight = '#A5C25C'
let orange     = '#E8BF6A'
let orangeDark = '#3E372A'
let pink       = '#ED3276'
let purple     = '#C064C7'
let red        = '#FF0000'
let redDark    = '#553939'
let redLight   = '#CE9178'
let turquoise  = '#45C8B0'
let white      = '#ABABAB'
let yellow     = '#DCDCAA'



"------------------------------------------------------------------------------
" Editor

highlight ColorColumn                                              guibg=grayDark
highlight CursorLine                                               guibg=black
highlight CursorLineNr                             guifg=white     guibg=black
highlight EndOfBuffer                              guifg=grayDark  guibg=black
highlight ErrorMsg                                 guifg=black     guibg=red
highlight FoldColumn                               guifg=black     guibg=black
highlight LineNr                                   guifg=gray      guibg=black
highlight IncSearch                                guifg=gray      guibg=black
highlight ModeMsg                                  guifg=black     guibg=gray
highlight MoreMsg                                  guifg=black     guibg=gray
highlight Pmenu                                    guifg=white     guibg=gray
highlight PmenuSbar                                                guibg=gray
highlight PmenuSel                                 guifg=white     guibg=black
highlight PmenuThumb                                               guibg=white
highlight Search                                   guifg=white     guibg=gray
highlight SignColumn                                               guibg=black
highlight StatusLine                               guifg=gray      guibg=black
highlight StatusLineNC                             guifg=gray      guibg=black
highlight Visual                                   guifg=black     guibg=gray
highlight WarningMsg                               guifg=black     guibg=orange
" highlight WarningMsg                              guifg=black    guibg=orange
"highlight WinSeparator      guifg=black     guibg=black



"------------------------------------------------------------------------------
" Project Tree

highlight Directory                                guifg=white     guibg=black



"------------------------------------------------------------------------------
" Language Defaults

highlight Boolean                                  guifg=blue      guibg=black
highlight Charakter                                guifg=white     guibg=black
highlight Comment                                  guifg=red       guibg=black
highlight Conditional                              guifg=blue      guibg=black
highlight Constant                                 guifg=purple    guibg=black
highlight Delimiter                                guifg=white     guibg=black
highlight Exception                                guifg=blue      guibg=black
highlight Function                                 guifg=orange    guibg=black
highlight Identifier                               guifg=purple    guibg=black
highlight Include                                  guifg=blue      guibg=black
highlight Keyword                                  guifg=blue      guibg=black
highlight MatchParen                               guifg=white     guibg=gray
highlight Normal                                   guifg=white     guibg=black
highlight Number                                   guifg=greenLight guibg=black
highlight Operator                                 guifg=white     guibg=black
highlight PreProc                                  guifg=blue      guibg=black
highlight Special                                  guifg=white     guibg=black
highlight String                                   guifg=redLight  guibg=black
highlight Todo                                     guifg=red       guibg=black
highlight Type                                     guifg=turquoise guibg=black




"------------------------------------------------------------------------------
" COC

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
"highlight CocFloating     ctermbg=16 guibg=black
"highlight CocMenuSel      ctermbg=16 guibg=black
"highlight CocFloatThumb   ctermbg=16 guibg=black
"highlight CocFloatSbar    ctermbg=16 guibg=black
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
"highlight CocErrorFloat   ctermfg=9 ctermbg=16 guifg=#ff0000 guibg=black
"highlight CocNotificationWarning guifg=#282828 guibg=#98971a
"highlight CocWarningFloat  ctermfg=130 ctermbg=16 guifg=#ff922b guibg=black
"highlight CocNotificationInfo guifg=#282828 guibg=#98971a
"highlight CocInfoFloat    ctermfg=11 ctermbg=16 guifg=#fab005 guibg=black
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
"highlight CocHintFloat    ctermfg=12 ctermbg=16 guifg=#15aabf guibg=black
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
"CocExplorerGitPathChange_Internal xxx ctermfg=121 guifg=turquoise
"CocExplorerGitContentChange_Internal xxx ctermfg=121 guifg=greenLight
"CocExplorerErrorColor_Internal xxx ctermfg=15 guifg=#FF006E
"CocExplorerCommentColor_Internal xxx ctermfg=14 guifg=red
"CocExplorerNormalColor_Internal xxx ctermfg=188 guifg=white
"CocExplorerCocErrorSignColor_Internal xxx ctermfg=9 guifg=red
"CocExplorerCocWarningSignColor_Internal xxx ctermfg=130 guifg=#FF922B



"------------------------------------------------------------------------------
" CSS

highlight css                                      guifg=#ff006e   guibg=#3a86ff
highlight cssAnimationAttr                         guifg=#ff006e   guibg=#3a86ff
highlight cssAnimationProp                         guifg=#ff006e   guibg=#3a86ff
highlight cssAtKeyword                             guifg=blue
highlight cssAtRule                                guifg=blue
highlight cssAtRuleLogical                         guifg=#ff006e   guibg=#3a86ff
highlight cssAttr                                  guifg=white
highlight cssAttrComma                             guifg=white
highlight cssAttributeSelector                     guifg=blue
highlight cssAttrRegion                            guifg=white
highlight cssAuralAttr                             guifg=#ff006e   guibg=#a7c957
highlight cssAuralProp                             guifg=#ff006e   guibg=#a7c957
highlight cssBackgroundAttr                        guifg=orange
highlight cssBackgroundProp                        guifg=blue
"auto keyword:
highlight cssBoxAttr                               guifg=white
highlight cssBoxProp                               guifg=blue
highlight cssBraceError                            guifg=black     guibg=red
highlight cssBraces                                guifg=white
highlight cssCascadeAttr                           guifg=#ff006e   guibg=#3a86ff
highlight cssCascadeProp                           guifg=#ff006e   guibg=#3a86ff
highlight cssClassName                             guifg=turquoise
highlight cssClassNameDot                          guifg=white
highlight cssColor                                 guifg=white
highlight cssColorProp                             guifg=#ff006e   guibg=#3a86ff
highlight cssComment                               guifg=red
"none keyword:
highlight cssCommonAttr                            guifg=white
highlight cssContentForPagedMediaAttr              guifg=#ff006e   guibg=#3a86ff
highlight cssContentForPagedMediaProp              guifg=#ff006e   guibg=#3a86ff
"CSS-Variables:
highlight cssCustomProp                            guifg=purple
highlight cssDefinition                            guifg=#ff006e   guibg=#3a86ff
highlight cssDeprecated                            guifg=#ff006e   guibg=#3a86ff
highlight cssDimensionAttr                         guifg=#ff006e   guibg=#3a86ff
highlight cssDimensionProp                         guifg=#ff006e   guibg=#3a86ff
highlight cssError                                 guifg=black     guibg=red
highlight cssFlexibleBoxAttr                       guifg=white
highlight cssFlexibleBoxProp                       guifg=blue
highlight cssFontAttr                              guifg=white
highlight cssFontDescriptor                        guifg=#ff006e   guibg=#3a86ff
highlight cssFontDescriptorAttr                    guifg=#ff006e   guibg=#3a86ff
highlight cssFontDescriptorProp                    guifg=blue
highlight cssFontProp                              guifg=blue
highlight cssFunction                              guifg=orange
highlight cssFunctionComma                         guifg=white
highlight cssFunctionName                          guifg=orange
highlight cssGeneratedContentAttr                  guifg=#ff006e   guibg=#3a86ff
highlight cssGeneratedContentProp                  guifg=blue
highlight cssGradientAttr                          guifg=#ff006e   guibg=#3a86ff
highlight cssGridAttr                              guifg=#ff006e   guibg=#3a86ff
highlight cssGridProp                              guifg=blue
highlight cssHacks                                 guifg=#ff006e   guibg=#3a86ff
highlight cssHyperlinkAttr                         guifg=#ff006e   guibg=#3a86ff
highlight cssHyperlinkProp                         guifg=#ff006e   guibg=#3a86ff
highlight cssIdentifier                            guifg=turquoise
highlight cssIEUIAttr                              guifg=#ff006e   guibg=#3a86ff
highlight cssIEUIProp                              guifg=#ff006e   guibg=#3a86ff
highlight cssImportant                             guifg=blue
highlight cssInteractAttr                          guifg=#ff006e   guibg=#3a86ff
highlight cssInteractProp                          guifg=#ff006e   guibg=#3a86ff
highlight cssKeyFrameProp                          guifg=white     guibg=black
highlight cssLineboxAttr                           guifg=#ff006e   guibg=#3a86ff
highlight cssLineboxProp                           guifg=#ff006e   guibg=#3a86ff
highlight cssListAttr                              guifg=#ff006e   guibg=#3a86ff
highlight cssListProp                              guifg=blue
highlight cssMarginAttr                            guifg=#ff006e   guibg=#3a86ff
highlight cssMarqueeAttr                           guifg=#ff006e   guibg=#3a86ff
highlight cssMarqueeProp                           guifg=#ff006e   guibg=#3a86ff
highlight cssMediaAttr                             guifg=#ff006e   guibg=#3a86ff
highlight cssMediaComma                            guifg=#ff006e   guibg=#3a86ff
highlight cssMediaProp                             guifg=blue
highlight cssMediaType                             guifg=#ff006e   guibg=#3a86ff
highlight cssMobileTextProp                        guifg=#ff006e   guibg=#3a86ff
highlight cssMultiColumnAttr                       guifg=#ff006e   guibg=#3a86ff
highlight cssMultiColumnProp                       guifg=blue
highlight cssNoise                                 guifg=white
highlight cssPaddingAttr                           guifg=#ff006e   guibg=#52796f
highlight cssPagedMediaAttr                        guifg=#ff006e   guibg=#52796f
highlight cssPagedMediaProp                        guifg=#ff006e   guibg=#52796f
highlight cssPageMarginProp                        guifg=#ff006e   guibg=#52796f
highlight cssPageProp                              guifg=blue
highlight cssPagePseudo                            guifg=#ff006e   guibg=#52796f
highlight cssPositioningAttr                       guifg=white
highlight cssPositioningProp                       guifg=blue
highlight cssPrintAttr                             guifg=#ff006e   guibg=#ff006e
highlight cssPrintProp                             guifg=#ff006e   guibg=#ff006e
highlight cssProp                                  guifg=blue
highlight cssPseudoClass                           guifg=blue
highlight cssPseudoClassFn                         guifg=#ff006e   guibg=#dda15e
highlight cssPseudoClassId                         guifg=blue
highlight cssPseudoClassLang                       guifg=#ff006e   guibg=#dda15e
highlight cssRenderAttr                            guifg=#ff006e   guibg=#dda15e
highlight cssRenderProp                            guifg=#ff006e   guibg=#dda15e
highlight cssRubyAttr                              guifg=#ff006e   guibg=#dda15e
highlight cssRubyProp                              guifg=#ff006e   guibg=#dda15e
highlight cssSelectorOp                            guifg=white
highlight cssSelectorOp2                           guifg=white
highlight cssSpecialCharQ                          guifg=#ff006e   guibg=#dda15e
highlight cssSpecialCharQQ                         guifg=#ff006e   guibg=#dda15e
highlight cssSpeechAttr                            guifg=#ff006e   guibg=#dda15e
highlight cssSpeechProp                            guifg=#ff006e   guibg=#dda15e
highlight cssStringQ                               guifg=#ff006e   guibg=#dda15e
highlight cssStringQQ                              guifg=redLight
highlight cssStyle                                 guifg=#ff006e   guibg=#dda15e
highlight cssTableAttr                             guifg=white
highlight cssTableProp                             guifg=#dda15e   guibg=#ff006e
highlight cssTagName                               guifg=blue
highlight cssTextAttr                              guifg=white
highlight cssTextProp                              guifg=blue
highlight cssTransformAttr                         guifg=#dda15e   guibg=#ff006e
highlight cssTransformProp                         guifg=blue
highlight cssTransitionAttr                        guifg=white
highlight cssTransitionProp                        guifg=#dda15e   guibg=#ff006e
highlight cssUIAttr                                guifg=white
highlight cssUIProp                                guifg=blue
highlight cssUnicodeEscape                         guifg=#dda15e   guibg=#ff006e
highlight cssUnicodeRange                          guifg=#dda15e   guibg=#ff006e
highlight cssUnitDecorators                        guifg=white
highlight cssURL                                   guifg=#dda15e   guibg=#ff006e
highlight cssValueAngle                            guifg=greenLight
highlight cssValueFrequency                        guifg=#dda15e   guibg=#ff006e
highlight cssValueInteger                          guifg=#dda15e   guibg=#ff006e
highlight cssValueLength                           guifg=greenLight
highlight cssValueNumber                           guifg=greenLight
highlight cssValueTime                             guifg=#dda15e   guibg=#ff006e
highlight cssVendor                                guifg=#936639   guibg=#fee440
highlight cssMathParens                            guifg=#936639   guibg=#fee440
highlight cssMathGroup                             guifg=#936639   guibg=#fee440
highlight cssBorderProp                            guifg=white
highlight cssBorderAttr                            guifg=#936639   guibg=#fee440
highlight cssHyerlinkProp                          guifg=#936639   guibg=#fee440
highlight cssObjectProp                            guifg=#936639   guibg=#fee440
highlight cssObjectAttr                            guifg=#936639   guibg=#fee440
highlight cssHyerlinkAttr                          guifg=#936639   guibg=#fee440
highlight cssMediaBlock                            guifg=#936639   guibg=#fee440
highlight cssLength                                guifg=#936639   guibg=#fee440
highlight cssString                                guifg=#936639   guibg=#fee440



"------------------------------------------------------------------------------
" HTML

highlight htmlArg                                  guifg=turquoise guibg=black
highlight htmlBold                                 guifg=#5a189a   guibg=#5a189a
highlight htmlEndTag                               guifg=blue      guibg=black
highlight htmlH1                                   guifg=white     guibg=black
highlight htmlH2                                   guifg=white     guibg=black
highlight htmlH3                                   guifg=white     guibg=black
highlight htmlH4                                   guifg=white     guibg=black
highlight htmlH5                                   guifg=white     guibg=black
highlight htmlH6                                   guifg=white     guibg=black
highlight htmlItalic                               guifg=blue      guibg=#7400b8
highlight htmlLink                                 guifg=white     guibg=black
highlight htmlSpecialChar                          guifg=blue      guibg=black
highlight htmlSpecialTagName                       guifg=blue      guibg=black
highlight htmlTag                                  guifg=blue      guibg=black
highlight htmlTagN                                 guifg=white     guibg=black
highlight htmlTagName                              guifg=blue      guibg=black
highlight htmlTitle                                guifg=white     guibg=black
highlight htmlError                                guifg=blue      guibg=#7400b8
highlight htmlString                               guifg=redLight  guibg=black
highlight htmlValue                                guifg=blue      guibg=#7400b8
highlight htmlTagError                             guifg=blue      guibg=#7400b8
highlight htmlEvent                                guifg=blue      guibg=#7400b8
highlight htmlCssDefinition                        guifg=blue      guibg=#7400b8
highlight htmlMathTagName                          guifg=blue      guibg=#7400b8
highlight htmlSvgTagName                           guifg=blue      guibg=#7400b8
highlight htmlMath                                 guifg=blue      guibg=#7400b8
highlight htmlSvg                                  guifg=blue      guibg=#7400b8
highlight htmlCommentError                         guifg=blue      guibg=#7400b8
highlight htmlComment                              guifg=red       guibg=black
highlight htmlCommentNested                        guifg=blue      guibg=#7400b8
highlight htmlPreStmt                              guifg=blue      guibg=#7400b8
highlight htmlPreError                             guifg=blue      guibg=#7400b8
highlight htmlPreAttr                              guifg=blue      guibg=#7400b8
highlight htmlPreProc                              guifg=blue      guibg=#7400b8
highlight htmlPreProcAttrError                     guifg=blue      guibg=#7400b8
highlight htmlPreProcAttrName                      guifg=blue      guibg=#7400b8
highlight htmlStrike                               guifg=blue      guibg=#7400b8
highlight htmlBoldUnderline                        guifg=blue      guibg=#7400b8
highlight htmlBoldItalic                           guifg=blue      guibg=#7400b8
highlight htmlBoldUnderlineItalic                  guifg=blue      guibg=#7400b8
highlight htmlBoldItalicUnderline                  guifg=blue      guibg=#7400b8
highlight htmlUnderlineBold                        guifg=blue      guibg=#7400b8
highlight htmlUnderlineItalic                      guifg=blue      guibg=#7400b8
highlight htmlUnderline                            guifg=blue      guibg=#7400b8
highlight htmlUnderlineBoldItalic                  guifg=blue      guibg=#7400b8
highlight htmlUnderlineItalicBold                  guifg=blue      guibg=#7400b8
highlight htmlItalicBold                           guifg=blue      guibg=#7400b8
highlight htmlItalicUnderline                      guifg=blue      guibg=#7400b8
highlight htmlItalicBoldUnderline                  guifg=blue      guibg=#7400b8
highlight htmlItalicUnderlineBold                  guifg=blue      guibg=#7400b8
highlight htmlLeadingSpace                         guifg=white     guibg=black
highlight htmlHead                                 guifg=white     guibg=black
highlight htmlCssStyleComment                      guifg=blue      guibg=#7400b8
highlight htmlScriptTag                            guifg=blue      guibg=black
highlight htmlEventSQ                              guifg=blue      guibg=#7400b8
highlight htmlEventDQ                              guifg=blue      guibg=#7400b8
highlight htmlStyleArg                             guifg=blue      guibg=#7400b8
highlight htmlHighlight                            guifg=blue      guibg=#7400b8
highlight htmlHighlightSkip                        guifg=blue      guibg=#7400b8
highlight htmlStatement                            guifg=blue      guibg=#7400b8
highlight htmlCommentPart                          guifg=blue      guibg=#7400b8



"------------------------------------------------------------------------------
" JSON

highlight jsonNoise                                guifg=white
highlight jsonKeyword                              guifg=#589bd9
highlight jsonKeywordMatch                         guifg=white
highlight jsonQuote                                guifg=white
highlight jsonString                               guifg=white
highlight jsonStringMatch                          guifg=black     guibg=#f9f9f9
highlight jsonEscape                               guifg=#589bd9
highlight jsonStringSQError                        guifg=black     guibg=#ff6392
highlight jsonNumber                               guifg=black     guibg=#db7c26
highlight jsonNoQuotesError                        guifg=black     guibg=#c32f27
highlight jsonTripleQuotesError                    guifg=black     guibg=#ee6055
highlight jsonNumError                             guifg=black     guibg=#60d394
highlight jsonCommentError                         guifg=black     guibg=#aaf683
highlight jsonSemicolonError                       guifg=black     guibg=#ffd97d
highlight jsonTrailingCommaError                   guifg=black     guibg=#ff9b85
highlight jsonMissingCommaError                    guifg=black     guibg=#694873
highlight jsonPadding                              guifg=black     guibg=#8b728e
highlight jsonBoolean                              guifg=#589bd9
highlight jsonNull                                 guifg=black     guibg=#007f5f
highlight jsonBraces                               guifg=white
highlight jsonFold                                 guifg=black     guibg=#d4d700
highlight jsonTest                                 guifg=black     guibg=#eeef20



"------------------------------------------------------------------------------
" Lua

highlight luaMetaMethod                            guifg=#ff006e   guibg=#ccd5ae
highlight luaParenError                            guifg=#ff006e   guibg=#d4a373
highlight luaParen                                 guifg=#ff006e   guibg=#e63946
highlight luaError                                 guifg=#ff006e   guibg=#8ecae6
highlight luaFunction                              guifg=blue
highlight luaFunctionBlock                         guifg=#ff006e   guibg=#457b9d
highlight luaCondElse                              guifg=#ff006e   guibg=#ffb703
highlight luaCondEnd                               guifg=#ff006e   guibg=#ffafcc
highlight luaCond                                  guifg=blue
highlight luaCondElseif                            guifg=#ff006e   guibg=#ff006e
highlight luaCondStart                             guifg=#ff006e   guibg=#8338ec
highlight luaStatement                             guifg=blue
highlight luaBlock                                 guifg=#ff006e   guibg=#84a98c
highlight luaRepeat                                guifg=#ff006e   guibg=#52796f
highlight luaRepeatBlock                           guifg=#ff006e   guibg=#2f3e46
highlight luaWhile                                 guifg=#ff006e   guibg=#003049
highlight luaFor                                   guifg=#ff006e   guibg=#d62828
highlight luaLabel                                 guifg=#ff006e   guibg=#f77f00
highlight luaOperator                              guifg=blue
highlight luaSymbolOperator                        guifg=white
highlight luaTodo                                  guifg=#ff006e   guibg=#ddb892
highlight luaComment                               guifg=green
highlight luaInnerComment                          guifg=#ff006e   guibg=#7f5539
highlight luaCommentDelimiter                      guifg=#ff006e   guibg=#9c6644
highlight luaConstant                              guifg=purple
highlight luaSpecial                               guifg=#ff006e   guibg=#9b5de5
highlight luaString2                               guifg=redLight
highlight luaStringDelimiter                       guifg=redLight
highlight luaString                                guifg=redLight
highlight luaNumber                                guifg=greenLight
highlight luaTable                                 guifg=white
highlight luaTableBlock                            guifg=#ff006e   guibg=#ff99c8
highlight luaFunc                                  guifg=orange



"------------------------------------------------------------------------------
" Markdown

highlight markdownBlockquote                       guifg=blue      guibg=#c8553d
highlight markdownBold                             guifg=white     guibg=black
highlight markdownBoldDelimiter                    guifg=blue      guibg=black
highlight markdownCode                             guifg=green     guibg=black
highlight markdownCodeBlock                        guifg=green     guibg=black
highlight markdownCodeDelimiter                    guifg=blue      guibg=black
highlight markdownH1                               guifg=blue      guibg=black
highlight markdownH2                               guifg=blue      guibg=black
highlight markdownH3                               guifg=blue      guibg=black
highlight markdownH4                               guifg=blue      guibg=black
highlight markdownH5                               guifg=blue      guibg=black
highlight markdownH6                               guifg=blue      guibg=black
highlight markdownHeadingDelimiter                 guifg=blue      guibg=black
highlight markdownHeadingRule                      guifg=blue      guibg=#c8553d
highlight markdownId                               guifg=blue      guibg=#c8553d
highlight markdownIdDeclaration                    guifg=blue      guibg=#c8553d
highlight markdownIdDelimiter                      guifg=blue      guibg=#c8553d
highlight markdownItalic                           guifg=blue      guibg=#c8553d
highlight markdownLinkDelimiter                    guifg=white     guibg=black
highlight markdownLinkText                         guifg=white     guibg=black
highlight markdownListMarker                       guifg=blue      guibg=black
highlight markdownOrderedListMarker                guifg=blue      guibg=black
highlight markdownRule                             guifg=blue      guibg=#c8553d
highlight markdownUrl                              guifg=#287BDE



"------------------------------------------------------------------------------
" PHP

highlight phpTodo                                  guifg=red       guibg=black
highlight phpComment                               guifg=red       guibg=black
highlight phpRegion                                guifg=white     guibg=black
highlight phpInclude                               guifg=blue      guibg=black
highlight phpClass                                 guifg=turquoise guibg=black
highlight phpClasses                               guifg=turquoise guibg=black
highlight phpFunction                              guifg=orange    guibg=black
highlight phpType                                  guifg=blue      guibg=black
highlight phpKeyword                               guifg=blue      guibg=black
highlight phpVarSelector                           guifg=purple    guibg=black
highlight phpIdentifier                            guifg=purple    guibg=black
highlight phpMethod                                guifg=orange    guibg=black
highlight phpBoolean                               guifg=blue      guibg=black
highlight phpParent                                guifg=white     guibg=black
highlight phpOperator                              guifg=white     guibg=black
highlight phpUseNamespaceSeparator                 guifg=black     guibg=#5aa9e6
highlight phpClassNamespaceSeparator               guifg=black     guibg=#f9f9f9
highlight phpDocTags                               guifg=blue      guibg=black
highlight phpDocParam                              guifg=black     guibg=#5aa9e6
highlight phpInnerHtmlSpecialChar                  guifg=black     guibg=#7fc8f8
highlight phpInnerHtmlTagN                         guifg=black     guibg=#f9f9f9
highlight phpInnerHtmlTagError                     guifg=black     guibg=#ffe45e
highlight phpInnerHtmlString                       guifg=black     guibg=#ff6392
highlight phpInnerHtmlValue                        guifg=black     guibg=#ff8811
highlight phpInnerHtmlEvent                        guifg=black     guibg=#f4d06f
highlight phpInnerHtmlCssDefinition                guifg=black     guibg=#fff8f0
highlight phpInnerHtmlCommentError                 guifg=black     guibg=#9dd9d2
highlight phpInnerHtmlCommentNested                guifg=black     guibg=#392f5a
highlight phpInnerHtmlPreStmt                      guifg=black     guibg=#05668d
highlight phpInnerHtmlPreError                     guifg=black     guibg=#427aa1
highlight phpInnerHtmlPreAttr                      guifg=black     guibg=#ebf2fa
highlight phpInnerHtmlPreProcAttrError             guifg=black     guibg=#679436
highlight phpInnerHtmlPreProcAttrName              guifg=black     guibg=#a5be00
highlight phpInnerHtmlBoldUnderline                guifg=black     guibg=#ff206e
highlight phpInnerHtmlBoldItalic                   guifg=black     guibg=#fbff12
highlight phpInnerHtmlBoldUnderlineItalic          guifg=black     guibg=#41ead4
highlight phpInnerHtmlBoldItalicUnderline          guifg=black     guibg=#7c9eb2
highlight phpInnerHtmlUnderlineBold                guifg=black     guibg=#77bfa3
highlight phpInnerHtmlUnderlineItalic              guifg=black     guibg=#52528c
highlight phpInnerHtmlUnderlineBoldItalic          guifg=black     guibg=#372554
highlight phpInnerHtmlUnderlineItalicBold          guifg=black     guibg=#231123
highlight phpInnerHtmlItalicBold                   guifg=black     guibg=#84dcc6
highlight phpInnerHtmlItalicUnderline              guifg=black     guibg=#a5ffd6
highlight phpInnerHtmlItalicBoldUnderline          guifg=black     guibg=#ffa69e
highlight phpInnerHtmlItalicUnderlineBold          guifg=black     guibg=#ff686b
highlight phpInnerHtmlTag                          guifg=black     guibg=#2f6690
highlight phpInnerHtmlEndTag                       guifg=black     guibg=#3a7ca5
highlight phpInnerHtmlPreProc                      guifg=black     guibg=#d9dcd6
highlight phpInnerHtmlComment                      guifg=#ffffff   guibg=#16425b
highlight phpInnerHtmlLeadingSpace                 guifg=black     guibg=#81c3d7
highlight phpInnerJavaScript                       guifg=black     guibg=#07beb8
highlight phpInnerHtmlLink                         guifg=black     guibg=#3dccc7
highlight phpInnerHtmlTitle                        guifg=black     guibg=#68d8d6
highlight phpInnerCssStyle                         guifg=black     guibg=#9ceaef
highlight phpInnerHtmlArg                          guifg=black     guibg=#c4fff9
highlight phpInnerHtmlEventSQ                      guifg=black     guibg=#cc5803
highlight phpInnerHtmlEventDQ                      guifg=black     guibg=#e2711d
highlight phpRegionAsp                             guifg=black     guibg=#ff9505
highlight phpRegionSc                              guifg=black     guibg=#ffb627
highlight phpEnvVar                                guifg=black     guibg=#ffc971
highlight phpIntVar                                guifg=black     guibg=#7bdff2
highlight phpCoreConstant                          guifg=black     guibg=#b2f7ef
highlight phpConstant                              guifg=purple    guibg=black
highlight phpFunctions                             guifg=orange    guibg=black
highlight phpMethods                               guifg=orange    guibg=black
highlight phpConditional                           guifg=blue      guibg=black
highlight phpRepeat                                guifg=blue      guibg=black
highlight phpLabel                                 guifg=black     guibg=#a1cca5
highlight phpStatement                             guifg=blue      guibg=black
highlight phpStructure                             guifg=blue      guibg=black
highlight phpRelation                              guifg=white     guibg=black
highlight phpMemberSelector                        guifg=#8fb996   guibg=black
highlight phpIdentifierSimply                      guifg=black     guibg=#8fb996
highlight phpIdentifierComplexP                    guifg=black     guibg=#709775
highlight phpIdentifierComplex                     guifg=black     guibg=#415d43
highlight phpBrackets                              guifg=white     guibg=black
highlight phpInterpSimpleError                     guifg=#ffffff   guibg=#086375
highlight phpInterpBogusDollarCurley               guifg=black     guibg=#1dd3b0
highlight phpInterpSimpleBracketsInner             guifg=black     guibg=#affc41
highlight phpInterpSimpleBrackets                  guifg=black     guibg=#b2ff9e
highlight phpInterpSimple                          guifg=black     guibg=#003459
highlight phpInterpVarname                         guifg=black     guibg=#007ea7
highlight phpInterpMethodName                      guifg=black     guibg=#00a8e8
highlight phpInterpSimpleCurly                     guifg=black     guibg=#d4e09b
highlight phpInterpDollarCurley1Helper             guifg=black     guibg=#f6f4d2
highlight phpInterpDollarCurly1                    guifg=black     guibg=#cbdfbd
highlight phpInterpDollarCurley2Helper             guifg=black     guibg=#f19c79
highlight phpInterpDollarCurly2                    guifg=black     guibg=#a44a3f
highlight phpInterpComplex                         guifg=black     guibg=#ef233c
highlight phpMethodsVar                            guifg=orange    guibg=black
highlight phpDefine                                guifg=blue      guibg=black
highlight phpFloatError                            guifg=black     guibg=#d5f2e3
highlight phpFloat                                 guifg=black     guibg=#73ba9b
highlight phpNumber                                guifg=greenLight guibg=black
highlight phpOctalError                            guifg=black     guibg=#003e1f
highlight phpBinaryError                           guifg=black     guibg=#d90429
highlight phpBackslashSequences                    guifg=black     guibg=#006466
highlight phpBackslashDoubleQuote                  guifg=black     guibg=#4d194d
highlight phpBackslashSingleQuote                  guifg=black     guibg=#ff206e
highlight phpStringDouble                          guifg=redLight  guibg=black
highlight phpBacktick                              guifg=black     guibg=#1b3a4b
highlight phpStringSingle                          guifg=redLight  guibg=black
highlight phpHereDoc                               guifg=black     guibg=#065a60
highlight phpNowDoc                                guifg=black     guibg=#0b525b
highlight phpException                             guifg=#5aa9e6   guibg=black
highlight phpParentError                           guifg=black     guibg=#641220
highlight phpStorageClass                          guifg=blue      guibg=black
highlight phpFoldFunction                          guifg=black     guibg=#6e1423
highlight phpFoldClass                             guifg=black     guibg=#85182a
highlight phpFoldInterface                         guifg=black     guibg=#a11d33
highlight phpFoldTry                               guifg=black     guibg=#b21e35
highlight phpFoldCatch                             guifg=black     guibg=#c71f37
highlight phpSCKeyword                             guifg=black     guibg=#f79256
highlight phpFoldHtmlInside                        guifg=black     guibg=#fbd1a2
highlight phpFCKeyword                             guifg=black     guibg=#7dcfb6
highlight phpSpecialFunction                       guifg=orange    guibg=black
highlight phpInterfaces                            guifg=black     guibg=#1d4e89
highlight phpAssignByRef                           guifg=black     guibg=#fcd581
highlight phpComparison                            guifg=white     guibg=black
highlight phpDocCustomTags                         guifg=blue      guibg=black
highlight phpDocTodo                               guifg=red       guibg=black
highlight phpBaselib                               guifg=black     guibg=#895737
highlight phpIdentifierConst                       guifg=black     guibg=#4e148c



"------------------------------------------------------------------------------
" DTD

highlight dtdFunction                              guifg=#AA77FF   guibg=#00235B
highlight dtdTag                                   guifg=#AA77FF   guibg=#00235B
highlight dtdTagName                               guifg=#AA77FF   guibg=#00235B
highlight dtdError                                 guifg=#AA77FF   guibg=#00235B
highlight dtdComment                               guifg=#AA77FF   guibg=#00235B
highlight dtdString                                guifg=#AA77FF   guibg=#00235B
highlight dtdAttrType                              guifg=#AA77FF   guibg=#00235B
highlight dtdAttrDef                               guifg=#AA77FF   guibg=#00235B
highlight dtdEnum                                  guifg=#AA77FF   guibg=#00235B
highlight dtdParamEntityInst                       guifg=#AA77FF   guibg=#00235B
highlight dtdParamEntityDecl                       guifg=#AA77FF   guibg=#00235B
highlight dtdCard                                  guifg=#AA77FF   guibg=#00235B
highlight dtdTodo                                  guifg=#AA77FF   guibg=#00235B
highlight dtdParamEntityPunct                      guifg=#AA77FF   guibg=#00235B
highlight dtdParamEntityDPunct                     guifg=#AA77FF   guibg=#00235B
highlight dtdEntityPunct                           guifg=#AA77FF   guibg=#00235B
highlight dtdEntity                                guifg=#AA77FF   guibg=#00235B
highlight dtdType                                  guifg=#AA77FF   guibg=#00235B
highlight dtdConstant                              guifg=#AA77FF   guibg=#00235B



"------------------------------------------------------------------------------
" Git

highlight DiffAdd                                  guifg=green     guibg=black
highlight DiffChange                               guifg=orange    guibg=black



"------------------------------------------------------------------------------
" JavaScript

highlight javaScriptExpression                     guifg=#ff006e   guibg=#617143
highlight javaScript                               guifg=white
highlight javaScriptCommentTodo                    guifg=#ff006e   guibg=#617143
highlight javaScriptLineComment                    guifg=red
highlight javaScriptCommentSkip                    guifg=#ff006e   guibg=#617143
highlight javaScriptComment                        guifg=red
highlight javaScriptSpecial                        guifg=#ff006e   guibg=#617143
highlight javaScriptStringD                        guifg=redLight
highlight javaScriptStringS                        guifg=redLight
highlight javaScriptEmbed                          guifg=#ff006e   guibg=#617143
highlight javaScriptStringT                        guifg=#ff006e   guibg=#617143
highlight javaScriptSpecialCharacter               guifg=#ff006e   guibg=#617143
highlight javaScriptNumber                         guifg=greenLight
highlight javaScriptRegexpString                   guifg=#ff006e   guibg=#617143
highlight javaScriptConditional                    guifg=#ff006e   guibg=#617143
highlight javaScriptRepeat                         guifg=#ff006e   guibg=#617143
highlight javaScriptBranch                         guifg=#ff006e   guibg=#617143
highlight javaScriptOperator                       guifg=#ff006e   guibg=#617143
highlight javaScriptType                           guifg=blue
highlight javaScriptStatement                      guifg=blue
highlight javaScriptBoolean                        guifg=blue
highlight javaScriptNull                           guifg=blue
highlight javaScriptIdentifier                     guifg=blue
highlight javaScriptLabel                          guifg=blue
highlight javaScriptException                      guifg=#ff006e   guibg=#617143
highlight javaScriptMessage                        guifg=#ff006e   guibg=#617143
highlight javaScriptGlobal                         guifg=#ff006e   guibg=#617143
highlight javaScriptMember                         guifg=turquoise
highlight javaScriptDeprecated                     guifg=#ff006e   guibg=#617143
highlight javaScriptReserved                       guifg=blue
highlight javaScriptFunction                       guifg=orange
highlight javaScriptBraces                         guifg=white
highlight javaScriptParens                         guifg=white
highlight javaScriptCharacter                      guifg=#ff006e   guibg=#617143
highlight javaScriptValue                          guifg=#ff006e   guibg=#617143
highlight javaScriptError                          guifg=#ff006e   guibg=#617143
highlight javaScrParenError                        guifg=#ff006e   guibg=#617143
highlight javaScriptDebug                          guifg=#ff006e   guibg=#617143
highlight javaScriptConstant                       guifg=#ff006e   guibg=#617143
highlight jsComment                                guifg=#ff006e   guibg=#617143
highlight jsString                                 guifg=#ff006e   guibg=#617143
highlight jsTemplateString                         guifg=#ff006e   guibg=#617143
highlight jsObjectKeyString                        guifg=#ff006e   guibg=#617143
highlight jsObjectStringKey                        guifg=#ff006e   guibg=#617143
highlight jsClassStringKey                         guifg=#ff006e   guibg=#617143
highlight javascriptString                         guifg=#ff006e   guibg=#617143
highlight javascriptTemplate                       guifg=#ff006e   guibg=#617143



"------------------------------------------------------------------------------
" VIM

" Blue
"highlight vimCommand guifg=blue
"highlight vimOption guifg=blue

" Purple
"highlight vimVar guifg=purple

" Green
"highlight vimNumber guifg=greenLight
highlight vimTodo                                  guifg=red
highlight vimCommand                               guifg=blue
highlight vimStdPlugin                             guifg=#1d3557   guibg=#e9edc9
highlight vimOption                                guifg=turquoise
highlight vimErrSetting                            guifg=#1d3557   guibg=#faedcd
highlight vimAutoEvent                             guifg=turquoise
highlight vimGroup                                 guifg=turquoise guibg=#e63946
highlight vimHLGroup                               guifg=green     guibg=#f1faee
highlight vimFuncName                              guifg=orange
highlight vimGlobal                                guifg=turquoise guibg=#457b9d
highlight vimSubst                                 guifg=turquoise guibg=#1d3557
highlight vimComment                               guifg=red
highlight vim9Comment                              guifg=red
highlight vimNumber                                guifg=greenLight
highlight vimAddress                               guifg=#ff006e   guibg=#B46060
highlight vimAutoCmd                               guifg=blue
highlight vimEcho                                  guifg=#ff006e   guibg=#023047
highlight vimIsCommand                             guifg=blue
highlight vimExtCmd                                guifg=blue      guibg=#fb8500
highlight vimFilter                                guifg=#ff006e   guibg=#264653
highlight vimLet                                   guifg=blue
highlight vimMap                                   guifg=blue
highlight vimMark                                  guifg=#ff006e   guibg=#f4a261
highlight vimSet                                   guifg=white
highlight vimSyntax                                guifg=turquoise
highlight vimUserCmd                               guifg=white
highlight vimCmdSep                                guifg=white
highlight vimVar                                   guifg=purple
highlight vimFBVar                                 guifg=#1d3557   guibg=#1d3557
highlight vimInsert                                guifg=#ff006e   guibg=#283618
highlight vimBehaveModel                           guifg=#1d3557   guibg=#fefae0
highlight vimBehaveError                           guifg=green     guibg=#dda15e
highlight vimBehave                                guifg=#ff006e   guibg=#bc6c25
highlight vimFTCmd                                 guifg=blue
highlight vimFTOption                              guifg=white
highlight vimFTError                               guifg=#1d3557   guibg=#ffc43d
highlight vimFiletype                              guifg=white
highlight vimAugroup                               guifg=white
highlight vimExecute                               guifg=white
highlight vimNotFunc                               guifg=blue
highlight vimFunction                              guifg=#ff006e   guibg=#218380
highlight vimFunctionError                         guifg=#005f73   guibg=#ffffff
highlight vimLineComment                           guifg=red
highlight vimSpecFile                              guifg=white
highlight vimOper                                  guifg=white
highlight vimOperParen                             guifg=white
highlight vimString                                guifg=redLight
highlight vimRegister                              guifg=#ff006e   guibg=#ffcdb2
highlight vimCmplxRepeat                           guifg=green     guibg=#ffb4a2
highlight vimRegion                                guifg=#ff006e   guibg=#e5989b
highlight vimSynLine                               guifg=#ff006e   guibg=#b5838d
highlight vimNotation                              guifg=blue
highlight vimCtrlChar                              guifg=#ff006e   guibg=#005f73
highlight vimFuncVar                               guifg=#005f73   guibg=#9b2226
highlight vimContinue                              guifg=white
highlight vimSetEqual                              guifg=white
highlight vimAugroupKey                            guifg=blue
highlight vimAugroupError                          guifg=#ff006e   guibg=#94d2bd
highlight vimEnvvar                                guifg=purple
highlight vimFunc                                  guifg=#ff006e   guibg=#6a994e
highlight vimType                                  guifg=blue      guibg=#a7c957
highlight vimParenSep                              guifg=white
highlight vimoperStar                              guifg=#a7c957   guibg=#bc4749
highlight vimSep                                   guifg=white
highlight vimOperError                             guifg=#a7c957   guibg=#fb5607
highlight vimFuncKey                               guifg=#ff006e   guibg=#ff006e
highlight vimFuncSID                               guifg=#ff006e   guibg=#8338ec
highlight vimAbb                                   guifg=#ff006e   guibg=#8d99ae
highlight vimEchoHL                                guifg=#ff006e   guibg=blue
highlight vimHighlight                             guifg=#589bd9
highlight vimLetHereDoc                            guifg=blue      guibg=#d90429
highlight vimNorm                                  guifg=#ff006e   guibg=#006d77
highlight vimSearch                                guifg=white
highlight vimUnmap                                 guifg=#ff006e   guibg=#f15bb5
highlight vimUserCommand                           guifg=white
highlight vimFuncBody                              guifg=#ff006e   guibg=#00bbf9
highlight vimFuncBlank                             guifg=#ff006e   guibg=#FFBF9B
highlight vimPattern                               guifg=#ff006e   guibg=#ffb5a7
highlight vimSpecFileMod                           guifg=#ff006e   guibg=#fcd5ce
highlight vimEscapeBrace                           guifg=#ff006e   guibg=#f8edeb
highlight vimSetString                             guifg=#ff006e   guibg=#f9dcc4
highlight vimSubstRep                              guifg=#ff006e   guibg=#fec89a
highlight vimSubstRange                            guifg=#ff006e   guibg=#80b918
highlight vimUserAttrb                             guifg=#ff006e   guibg=#80b918
highlight vimUserAttrbError                        guifg=#ff006e   guibg=#80b918
highlight vimComFilter                             guifg=#ff006e   guibg=#adb5bd
highlight vimUserAttrbKey                          guifg=#ff006e   guibg=#6c757d
highlight vimUserAttrbCmplt                        guifg=#ff006e   guibg=#495057
highlight vimUserCmdError                          guifg=#ff006e   guibg=#495057
highlight vimUserAttrbCmpltFunc                    guifg=#ff006e   guibg=#ff595e
highlight vimCommentString                         guifg=#ff006e   guibg=#ffca3a
highlight vimPatSepErr                             guifg=#ff006e   guibg=#8ac926
highlight vimPatSep                                guifg=#ff006e   guibg=#1982c4
highlight vimPatSepZ                               guifg=#ff006e   guibg=#6a4c93
highlight vimPatSepZone                            guifg=#ff006e   guibg=#f6bd60
highlight vimPatSepR                               guifg=#ff006e   guibg=#f7ede2
highlight vimPatRegion                             guifg=#06d6a0   guibg=#f5cac3
highlight vimNotPatSep                             guifg=#ff006e   guibg=#84a59d
highlight vimEscape                                guifg=white
highlight vimStringEnd                             guifg=redLight
highlight vimStringCont                            guifg=#ff006e   guibg=#06d6a0
highlight vimSubstTwoBS                            guifg=#06d6a0   guibg=#efc3e6
highlight vimSubstSubstr                           guifg=#ff006e   guibg=#9a031e
highlight vimCollection                            guifg=#ff006e   guibg=#b8bedd
highlight vimSubstPat                              guifg=#ff006e   guibg=#8a817c
highlight vimSubst1                                guifg=#ff006e   guibg=#bcb8b1
highlight vimSubst2                                guifg=#ff006e   guibg=#fb8b24
highlight vimSubstDelim                            guifg=#06d6a0   guibg=#e0afa0
highlight vimSubstRep4                             guifg=#06d6a0   guibg=#e36414
highlight vimSubstFlagErr                          guifg=#ff006e   guibg=#4f000b
highlight vimCollClass                             guifg=#ff006e   guibg=#720026
highlight vimCollClassErr                          guifg=#ff006e   guibg=#ce4257
highlight vimSubstFlags                            guifg=#ff006e   guibg=#ff7f51
highlight vimMarkNumber                            guifg=#ff006e   guibg=#ff9b54
highlight vimPlainMark                             guifg=#ff006e   guibg=#6f1d1b
highlight vimRange                                 guifg=#ff006e   guibg=#bb9457
highlight vimPlainRegister                         guifg=#ff006e   guibg=#432818
highlight vimSetMod                                guifg=#ff006e   guibg=#99582a
highlight vimSetSep                                guifg=white
highlight vimLetHereDocStart                       guifg=#ff006e   guibg=#582f0e
highlight vimLetHereDocStop                        guifg=#ff006e   guibg=#7f4f24
highlight vimMapMod                                guifg=purple
highlight vimMapLhs                                guifg=turquoise
highlight vimAutoCmdSpace                          guifg=black
highlight vimAutoEventList                         guifg=white
highlight vimAutoCmdSfxList                        guifg=white
highlight vimAutoCmdMod                            guifg=#ff006e   guibg=#656d4a
highlight vimEchoHLNone                            guifg=#ff006e   guibg=#414833
highlight vimMapBang                               guifg=#ff006e   guibg=#333d29
highlight vimMapRhs                                guifg=white
highlight vimMapModKey                             guifg=purple
highlight vimMapModErr                             guifg=#ff006e   guibg=#5a189a
highlight vimMapRhsExtend                          guifg=#ff006e   guibg=#9d4edd
highlight vimMenuBang                              guifg=#ff006e   guibg=#c77dff
highlight vimMenuPriority                          guifg=#ff006e   guibg=#e0aaff
highlight vimMenuName                              guifg=#ff006e   guibg=#ffadad
highlight vimMenuMod                               guifg=#06d6a0   guibg=#ffd6a5
highlight vimMenuNameMore                          guifg=#06d6a0   guibg=#fdffb6
highlight vimMenuMap                               guifg=#ff006e   guibg=#caffbf
highlight vimMenuRhs                               guifg=#ff006e   guibg=#B46060
highlight vimBracket                               guifg=white
highlight vimFuncEcho                              guifg=#ff006e   guibg=#bdb2ff
highlight vimUserFunc                              guifg=orange
highlight vimUsrCmd                                guifg=#589bd9
highlight vimElseIfErr                             guifg=#589bd9   guibg=#ef476f
highlight vimBufnrWarn                             guifg=#ff006e   guibg=#ffd166
highlight vimNormCmds                              guifg=#ff006e   guibg=#06d6a0
highlight vimGroupSpecial                          guifg=#ff006e   guibg=#118ab2
highlight vimGroupList                             guifg=#ff006e   guibg=#073b4c
highlight vimSynError                              guifg=#ff006e   guibg=#003566
highlight vimSynContains                           guifg=#003566   guibg=#ffc300
highlight vimSynKeyContainedin                     guifg=#ff006e   guibg=#ffd60a
highlight vimSynNextgroup                          guifg=#ff006e   guibg=#355070
highlight vimSynType                               guifg=#589bd9   guibg=black
highlight vimAuSyntax                              guifg=#355070   guibg=#b56576
highlight vimSynCase                               guifg=#ff006e   guibg=#e56b6f
highlight vimSynCaseError                          guifg=#ff006e   guibg=#eaac8b
highlight vimClusterName                           guifg=#ff006e   guibg=#16697a
highlight vimGroupName                             guifg=#ff006e   guibg=#489fb5
highlight vimGroupAdd                              guifg=#ff006e   guibg=#617143
highlight vimGroupRem                              guifg=turquoise guibg=#ede7e3
highlight vimIskList                               guifg=#ff006e   guibg=#ffa62b
highlight vimIskSep                                guifg=turquoise guibg=#390099
highlight vimSynKeyOpt                             guifg=turquoise guibg=#9e0059
highlight vimSynKeyRegion                          guifg=#ff006e   guibg=turquoise
highlight vimMtchComment                           guifg=turquoise guibg=#ff5400
highlight vimSynMtchOpt                            guifg=#ff006e   guibg=#ffbd00
highlight vimSynRegPat                             guifg=turquoise guibg=#ffe5ec
highlight vimSynMatchRegion                        guifg=#ff006e   guibg=#355070
highlight vimSynMtchCchar                          guifg=turquoise guibg=#6d597a
highlight vimSynMtchGroup                          guifg=turquoise guibg=#b56576
highlight vimSynPatRange                           guifg=turquoise guibg=#e56b6f
highlight vimSynNotPatRange                        guifg=turquoise guibg=#eaac8b
highlight vimSynRegOpt                             guifg=#ff006e   guibg=#16697a
highlight vimSynReg                                guifg=#ff006e   guibg=#489fb5
highlight vimSynMtchGrp                            guifg=#ff006e   guibg=#82c0cc
highlight vimSynRegion                             guifg=turquoise guibg=#ede7e3
highlight vimSynPatMod                             guifg=#ff006e   guibg=#ffa62b
highlight vimSyncC                                 guifg=turquoise guibg=#390099
highlight vimSyncLines                             guifg=turquoise guibg=#9e0059
highlight vimSyncMatch                             guifg=turquoise guibg=#ffbd00
highlight vimSyncError                             guifg=#ff006e   guibg=#ff5400
highlight vimSyncLinecont                          guifg=turquoise guibg=#ffe5ec
highlight vimSyncRegion                            guifg=white     guibg=#ffc2d1
highlight vimSyncGroupName                         guifg=white     guibg=#ffb3c6
highlight vimSyncKey                               guifg=#ff006e   guibg=#ff8fab
highlight vimSyncGroup                             guifg=#ff006e   guibg=#fb6f92
highlight vimSyncNone                              guifg=#ff006e   guibg=#8cb369
highlight vimHiLink                                guifg=#ff006e   guibg=#f4e285
highlight vimHiClear                               guifg=white     guibg=#f4a259
highlight vimHiKeyList                             guifg=white
highlight vimHiCtermError                          guifg=#ff006e   guibg=#bc4b51
highlight vimHiBang                                guifg=#ff006e   guibg=#3c6e71
highlight vimHiGroup                               guifg=turquoise
highlight vimHiAttrib                              guifg=white
highlight vimFgBgAttrib                            guifg=#ff006e   guibg=#284b63
highlight vimHiAttribList                          guifg=#ff006e   guibg=#e5d9f2
highlight vimHiCtermColor                          guifg=#ff006e   guibg=#f5efff
highlight vimHiFontname                            guifg=#ff006e   guibg=#cdc1ff
highlight vimHiGuiFontname                         guifg=#ff006e   guibg=#a594f9
highlight vimHiGuiRgb                              guifg=#01161e   guibg=#7371fc
highlight vimHiTerm                                guifg=#ff006e   guibg=#00296b
highlight vimHiCTerm                               guifg=purple
highlight vimHiStartStop                           guifg=#ff006e   guibg=#fdc500
highlight vimHiCtermFgBg                           guifg=#ff006e   guibg=#ffd500
highlight vimHiCtermul                             guifg=#ff006e   guibg=#01161e
highlight vimHiGui                                 guifg=#ff006e   guibg=#124559
highlight vimHiGuiFont                             guifg=#ff006e   guibg=#598392
highlight vimHiGuiFgBg                             guifg=purple
highlight vimHiKeyError                            guifg=#ff006e   guibg=#eff6e0
highlight vimHiTermcap                             guifg=#ff006e   guibg=#31572c
highlight vimHiNmbr                                guifg=#ff006e   guibg=#4f772d
highlight vimCommentTitle                          guifg=red
highlight vim9LineComment                          guifg=#005f73   guibg=#ecf39e
highlight vimCommentTitleLeader                    guifg=red
highlight vimSearchDelim                           guifg=white
highlight vimLuaRegion                             guifg=#ff006e   guibg=#8f2d56
highlight vimScriptDelim                           guifg=#011627   guibg=#218380
highlight vimPerlRegion                            guifg=#ff006e   guibg=#73d2de
highlight HighlightedyankRegion                    guifg=#ff006e   guibg=#73d2de



"------------------------------------------------------------------------------
" VisualBasic

highlight vbConditional                            guifg=#ff006e   guibg=#DF7857
highlight vbOperator                               guifg=#ff006e   guibg=#DF7857
highlight vbBoolean                                guifg=#ff006e   guibg=#DF7857
highlight vbConst                                  guifg=#ff006e   guibg=#DF7857
highlight vbRepeat                                 guifg=#ff006e   guibg=#DF7857
highlight vbEvents                                 guifg=#ff006e   guibg=#DF7857
highlight vbFunction                               guifg=#ff006e   guibg=#DF7857
highlight vbMethods                                guifg=#ff006e   guibg=#DF7857
highlight vbStatement                              guifg=#ff006e   guibg=#DF7857
highlight vbKeyword                                guifg=#ff006e   guibg=#DF7857
highlight vbTodo                                   guifg=#ff006e   guibg=#DF7857
highlight vbTypes                                  guifg=#ff006e   guibg=#DF7857
highlight vbDefine                                 guifg=#ff006e   guibg=#DF7857
highlight vbNumber                                 guifg=#ff006e   guibg=#DF7857
highlight vbFloat                                  guifg=#ff006e   guibg=#DF7857
highlight vbString                                 guifg=#ff006e   guibg=#DF7857
highlight vbComment                                guifg=#ff006e   guibg=#DF7857
highlight vbLineLabel                              guifg=#ff006e   guibg=#DF7857
highlight vbLineNumber                             guifg=#ff006e   guibg=#DF7857
highlight vbTypeSpecifier                          guifg=#ff006e   guibg=#DF7857
highlight vbPreProc                                guifg=#ff006e   guibg=#DF7857
highlight vbError                                  guifg=#ff006e   guibg=#DF7857
highlight vbIdentifier                             guifg=#ff006e   guibg=#DF7857



"------------------------------------------------------------------------------
" XML

highlight xmlError                                 guifg=#245953   guibg=#62CDFF
highlight xmlEntity                                guifg=#245953   guibg=#62CDFF
highlight xmlString                                guifg=redLight  guibg=black
highlight xmlAttribPunct                           guifg=white     guibg=black
highlight xmlEqual                                 guifg=white     guibg=black
highlight xmlAttrib                                guifg=turquoise guibg=black
highlight xmlNamespace                             guifg=#245953   guibg=#62CDFF
highlight xmlTagName                               guifg=blue      guibg=black
highlight xmlTag                                   guifg=blue      guibg=black
highlight xmlEndTag                                guifg=#245953   guibg=#62CDFF
highlight xmlCdata                                 guifg=#245953   guibg=#62CDFF
highlight xmlRegion                                guifg=white     guibg=black
highlight xmlComment                               guifg=red       guibg=black
highlight xmlProcessing                            guifg=white     guibg=black
highlight xmlEntityPunct                           guifg=#245953   guibg=#62CDFF
highlight xmlCommentStart                          guifg=#245953   guibg=#62CDFF
highlight xmlCommentError                          guifg=#245953   guibg=#62CDFF
highlight xmlCommentPart                           guifg=#245953   guibg=#62CDFF
highlight xmlTodo                                  guifg=red       guibg=black
highlight xmlCdataStart                            guifg=#245953   guibg=#62CDFF
highlight xmlCdataEnd                              guifg=#245953   guibg=#62CDFF
highlight xmlCdataCdata                            guifg=#245953   guibg=#62CDFF
highlight xmlProcessingDelim                       guifg=blue
highlight xmlDocTypeKeyword                        guifg=#245953   guibg=#62CDFF
highlight xmlInlineDTD                             guifg=#245953   guibg=#62CDFF
highlight xmlDocTypeDecl                           guifg=blue
highlight xmlDocType                               guifg=#245953   guibg=#62CDFF
highlight xmlSyncComment                           guifg=#245953   guibg=#62CDFF



"------------------------------------------------------------------------------
" YAML

highlight yamlBlockMappingKey                      guifg=blue      guibg=black
highlight yamlDocumentStart                        guifg=#539165   guibg=blue
highlight yamlAlias                                guifg=#539165   guibg=#BBD6B8
highlight yamlAnchor                               guifg=#539165   guibg=#FFD966
highlight yamlBlockScalar                          guifg=#539165   guibg=#408E91
highlight yamlCollection                           guifg=#539165   guibg=#867070
highlight yamlComment                              guifg=#539165   guibg=#AA77FF
highlight yamlDirective                            guifg=#539165   guibg=#2D2727
highlight yamlDocumentEnd                          guifg=#539165   guibg=#1A5F7A
highlight yamlFlowMappingKey                       guifg=#539165   guibg=#E11299
highlight yamlFlowCollection                       guifg=#539165   guibg=#F5C6EC
highlight yamlFlowEntry                            guifg=#539165   guibg=#7AA874
highlight yamlFlowScalar                           guifg=#539165   guibg=#EDE9D5
highlight yamlKey                                  guifg=#539165   guibg=green
highlight yamlNode                                 guifg=#539165   guibg=#E4D0D0
highlight yamlPlainScalar                          guifg=white     guibg=black
highlight yamlTag                                  guifg=#539165   guibg=#E7B10A
highlight yamlText                                 guifg=#539165   guibg=green
highlight yamlBlockCollectionItemStart             guifg=white     guibg=black



"------------------------------------------------------------------------------
" Shell

"highlight shDerefVar



"------------------------------------------------------------------------------
" Miscellaneous

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

