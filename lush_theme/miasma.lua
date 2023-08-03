-- call :Lushify
local lush = require("lush")
---@diagnostic disable
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    SpecialKey                                 { fg="#d7c483", },
    TermCursor                                 { gui="reverse", },
    NonText                                    { fg="#666666", gui="bold", },
    EndOfBuffer                                { NonText },
    Whitespace                                 { NonText },
    markdownHeadingRule                        { NonText },
    markdownCodeDelimiter                      { NonText },
    Directory                                  { fg="#78824b", bg="#1c1c1c", },
    gitCommitFile                              { Directory },
    ErrorMsg                                   { fg="#b36d43", bg="#222222", },
    NvimInvalidSpacing                         { ErrorMsg },
    IncSearch                                  { fg="#222222", bg="#bb7744", },
    FzfLuaSearch                               { IncSearch },
    Search                                     { fg="#222222", bg="#5f875f", },
    QuickFixLine                               { Search },
    Substitute                                 { Search },
    MoreMsg                                    { fg="#5f875f", gui="bold", },
    ModeMsg                                    { gui="bold", },
    LineNr                                     { fg="#666666", bg="#1c1c1c", },
    LineNrAbove                                { LineNr },
    LineNrBelow                                { LineNr },
    CursorLineNr                               { fg="#78824b", gui="bold", bg="#1c1c1c", },
    FzfLuaCursorLineNr                         { CursorLineNr },
    Question                                   { fg="#5f875f", gui="bold", },
    StatusLine                                 { fg="#d7c483", gui="bold", bg="#222222", },
    MsgSeparator                               { StatusLine },
    StatusLineNC                               { fg="#666666", gui="bold", bg="#222222", },
    Ignore                                     { fg="#444444", gui="underline", },
    VertSplit                                  { fg="#1c1c1c", bg="#222222", },
    WinSeparator                               { VertSplit },
    Title                                      { fg="#b36d43", gui="bold", },
    FloatTitle                                 { Title },
    sym"@text.title"                           { Title },
    helpHeadline                               { Title },
    Visual                                     { fg="#222222", bg="#78824b", },
    TelescopeSelection                         { Visual },
    WarningMsg                                 { fg="#b36d43", },
    WildMenu                                   { fg="black", bg="#c9a554", },
    Folded                                     { fg="#b36d43", bg="#1c1c1c", },
    FoldColumn                                 { fg="#666666", bg="#1c1c1c", },
    CursorLineFold                             { FoldColumn },
		DiffAdded                                  { bg="#1c1c1c", fg="#5f875f", },
		DiffRemoved                                { bg="#1c1c1c", fg="#b36d43", },
		DiffAdd                                    { fg="#222222", bg="#5f875f", },
    sym"@text.diff.add"                        { DiffAdd},
    DiffChange                                 { fg="#222222", bg="#685742", },
    DiffDelete                                 { fg="#222222", gui="bold", bg="#b36d43", },
    sym"@text.diff.delete"                     { DiffDelete },
    DiffText                                   { fg="#222222", gui="bold", bg="#c9a554", },
    SignColumn                                 { fg="#666666", bg="#1c1c1c" },
    CursorLineSign                             { SignColumn },
    Conceal                                    { Ignore },
    SpellBad                                   { fg="#685742", gui="underline", sp="#d7c483", },
    SpellCap                                   { fg="#5f875f", gui="underline", sp="#d7c483", },
    SpellRare                                  { fg="#b36d43", gui="underline", sp="#d7c483", },
    SpellLocal                                 { fg="#bb7744", gui="underline", sp="#d7c483", },
    Pmenu                                      { fg="#d7c483", bg="#1c1c1c", },
    PmenuKind                                  { Pmenu },
    PmenuExtra                                 { Pmenu },
    NormalFloat                                { Pmenu },
    PmenuSel                                   { fg="#222222", bg="#78834b", },
    PmenuKindSel                               { PmenuSel },
    PmenuExtraSel                              { PmenuSel },
    PmenuSbar                                  { bg="#666666", },
    FzfLuaScrollFloatEmpty                     { PmenuSbar },
    PmenuThumb                                 { fg="#d7c483", bg="#d7c483", },
    FzfLuaScrollFloatFull                      { PmenuThumb },
    TabLine                                    { fg="#666666", bg="#111111", },
    TabLineSep                                 { fg="#111111", bg="#222222", },
    TabLineSelSep                              { fg="#78834b", gui="bold", bg="#1c1c1c", },
    TabLineSel                                 { bg="#78834b", gui="bold", fg="#111111", },
    TabLineFill                                { fg="#c9a554", bg="#222222", },
    CursorColumn                               { bg="#1c1c1c", },
    CursorLine                                 { bg="#1c1c1c", },
    FzfLuaCursorLine                           { CursorLine },
    ColorColumn                                { bg="#222222", },
    WinBar                                     { gui="bold", },
    WinBarNC                                   { WinBar },
    Cursor                                     { fg="#222222", bg="#685742", },
    FzfLuaCursor                               { Cursor },
    lCursor                                    { fg="bg", bg="fg", },
    Normal                                     { fg="#D7C483", bg="#222222", },
    NvimSpacing                                { Normal },
    FzfLuaNormal                               { Normal },
    FzfLuaBorder                               { Normal },
    javaScript                                 { Normal },
    lessVariableValue                          { Normal },
    FloatShadow                                { bg="#000000", },
    FloatShadowThrough                         { bg="#000000", },
    RedrawDebugNormal                          { gui="reverse", },
    RedrawDebugClear                           { bg="#c9a554", fg="#222222" },
    RedrawDebugComposed                        { bg="#78834b", fg="#222222" },
    RedrawDebugRecompose                       { bg="#bb7744", fg="#222222" },
    Error                                      { fg="#c2c2b0", bg="#bb7744", },
    NvimInvalid                                { Error },
    Todo                                       { fg="#d7c483", gui="bold,underline", },
    sym"@text.todo"                            { Todo },
    String                                     { fg="#685742", },
    sym"@string"                               { String },
    NvimString                                 { String },
    phpHereDoc                                 { String },
    markdownCodeBlock                          { String },
    NERDTreeExecFile                           { String },
    helpExample                                { String },
    CtrlPMatch                                 { String },
    Constant                                   { fg="#bb7744", },
    Character                                  { Constant },
    sym"@constant"                             { Constant },
    sym"@lsp.type.enumMember"                  { Constant },
    rubyConstant                               { Constant },
    vimHiAttrib                                { Constant },
    Number                                     { fg="#78824b", },
    Float                                      { Number },
    sym"@number"                               { Number },
    NvimNumber                                 { Number },
    rubyInstanceVariable                       { Number },
    Boolean                                    { fg="#78834b", },
    sym"@boolean"                              { Boolean },
    Function                                   { fg="#78834b", },
    sym"@function"                             { Function },
    sym"@method"                               { Function },
    sym"@lsp.type.decorator"                   { Function },
    sym"@lsp.type.function"                    { Function },
    sym"@lsp.type.method"                      { Function },
    Identifier                                 { fg="#d7c483", },
    sym"@text.reference"                       { Identifier },
    sym"@parameter"                            { Identifier },
    sym"@field"                                { Identifier },
    sym"@property"                             { Identifier },
    sym"@variable"                             { Identifier },
    sym"@namespace"                            { Identifier },
    sym"@lsp.type.parameter"                   { Identifier },
    sym"@lsp.type.property"                    { Identifier },
    sym"@lsp.type.variable"                    { Identifier },
    NvimIdentifier                             { Identifier },
    rubyLocalVariableOrMethod                  { Identifier },
    Statement                                  { fg="#5f875f", gui="bold", },
    Conditional                                { Statement },
    Repeat                                     { Statement },
    Label                                      { Statement },
    Exception                                  { Statement },
    rubyDefine                                 { Statement },
    phpDefine                                  { Statement },
    helpHyperTextEntry                         { Statement },
    Keyword                                    { fg="#5f875f", },
    sym"@keyword"                              { Keyword },
    PreProc                                    { Keyword },
    Include                                    { PreProc },
    Define                                     { PreProc },
    Macro                                      { PreProc },
    PreCondit                                  { PreProc },
    sym"@preproc"                              { PreProc },
    Type                                       { fg="#78834b", gui="bold", },
    StorageClass                               { Type },
    Structure                                  { Type },
    Typedef                                    { Type },
    sym"@type"                                 { Type },
    sym"@lsp.type.type"                        { Type },
    NvimNumberPrefix                           { Type },
    NvimOptionSigil                            { Type },
    Special                                    { fg="#bb7744", },
    Tag                                        { Special },
    SpecialChar                                { Special },
    SpecialComment                             { Special },
    Debug                                      { Special },
    sym"@constant.builtin"                     { Special },
    sym"@function.builtin"                     { Special },
    sym"@constructor"                          { Special },
    TelescopeMatching                          { Special },
    TelescopeResultsFileIcon                   { Special },
    Delimiter                                  { fg="#d7c483", },
    Operator                                   { Delimiter },
    sym"@punctuation"                          { Delimiter },
    NvimParenthesis                            { Delimiter },
    NvimColon                                  { Delimiter },
    NvimComma                                  { Delimiter },
    NvimArrow                                  { Delimiter },
    javaScriptBraces                           { Delimiter },
    markdownLinkDelimiter                      { Delimiter },
    markdownURLDelimiter                       { Delimiter },
    vimSetSep                                  { Delimiter },
    vimContinue                                { Delimiter },
    DiagnosticError                            { fg="#b36d43", },
    DiagnosticFloatingError                    { DiagnosticError },
    DiagnosticErrorFloating                    { DiagnosticError },
    DiagnosticWarn                             { fg="#685742", },
    DiagnosticFloatingWarn                     { DiagnosticWarn },
    DiagnosticInfo                             { fg="#5f875f", },
    DiagnosticFloatingInfo                     { DiagnosticInfo },
    DiagnosticHint                             { fg="#5f875f", },
    DiagnosticFloatingHint                     { DiagnosticHint },
    DiagnosticOk                               { fg="#78824b", },
    DiagnosticVirtualTextOk                    { DiagnosticOk },
    DiagnosticFloatingOk                       { DiagnosticOk },
    DiagnosticSignOk                           { DiagnosticOk },
    DiagnosticUnderlineError                   { gui="underline", },
    DiagnosticUnderlineWarn                    { gui="underline", },
    DiagnosticUnderlineInfo                    { gui="underline", },
    DiagnosticUnderlineHint                    { gui="underline", },
    DiagnosticUnderlineOk                      { gui="underline", },
    DiagnosticVirtualTextError                 { fg="#b36d43", },
    DiagnosticVirtualTextWarn                  { fg="#685742", bg="#222222", },
    DiagnosticVirtualTextInfo                  { fg="#78824b", bg="#222222", },
    DiagnosticVirtualTextHint                  { fg="#78824b", bg="#222222", },
    DiagnosticSignError                        { fg="#b36d43", bg="#1c1c1c", },
    DiagnosticSignWarn                         { fg="#685742", bg="#1c1c1c", },
    DiagnosticSignInfo                         { fg="#78824b", bg="#1c1c1c", },
    DiagnosticSignHint                         { fg="#5f875f", bg="#1c1c1c", },
    DiagnosticDeprecated                       { gui="strikethrough", sp="#685742", },
    DiagnosticUnnecessary                      { fg="#666666", gui="underline", },
    Comment                                    { fg="#666666", },
    sym"@text.literal"                         { Comment },
    sym"@comment"                              { Comment },
    sym"@lsp.type.comment"                     { Comment },
    NERDTreeHelp                               { Comment },
    helpSectionDelim                           { Comment },
    CtrlPLinePre                               { Comment },
    LspCodeLens                                { Comment },
    Underlined                                 { fg="#78834b", gui="underline", },
    sym"@text.uri"                             { Underlined },
    sym"@text.underline"                       { Underlined },
    htmlLink                                   { Underlined },
    helpHyperTextJump                          { Underlined },
    helpURL                                    { Underlined },
    MatchParen                                 { fg="#d7c483", gui="bold,underline", },
    NvimInternalError                          { fg="#1c1c1c", bg="#b36d43", },
    NvimFigureBrace                            { NvimInternalError },
    NvimSingleQuotedUnknownEscape              { NvimInternalError },
    NvimInvalidSingleQuotedUnknownEscape       { NvimInternalError },
    LazyReasonRuntime                          { },
    LazyButtonActive                           { bg="#78834b", fg="#222222", },
    LazyDimmed                                 { },
    LazyTaskOutput                             { },
    LazyTaskError                              { },
    LazyCommitScope                            { },
    LazyCommitType                             { },
    LazyCommitIssue                            { },
    LazyReasonFt                               { },
    LazyProp                                   { },
    LazyCommit                                 { },
    LazyUrl                                    { },
    LazyReasonCmd                              { },
    LazyValue                                  { },
    LazyNormal                                 { bg="#1c1c1c", },
    LazyNoCond                                 { },
    LazyComment                                { },
    LazyH2                                     { fg="#78834b", bg="#222222", },
    LazyReasonSource                           { },
    LazyH1                                     { fg="#78834b", bg="#222222", },
    LazyReasonStart                            { },
    LazyLocal                                  { },
    LazyReasonImport                           { },
    LazyDir                                    { },
    LazyReasonKeys                             { },
    LazyProgressDone                           { },
    LazyReasonEvent                            { },
    LazyProgressTodo                           { },
    LazyReasonPlugin                           { },
    LazySpecial                                { fg="#c9a554", },
    LazyButton                                 { bg="#222222", },
		MasonHeader                                { bg="#1c1c1c", fg="#d7c483"},
		MasonHeaderSecondary                       { LazyButtonActive },
		MasonMuted                                 { bg="#1c1c1c", fg="#c9a554" },
		MasonHighlight                             { bg="#222222", fg="#78824b"},
		MasonMutedBlock                            { MasonMuted },
		MasonMutedBlockBold                        { MasonHighlight },
		MasonHighlightBlock                        { LazyButtonActive },
		MasonHighlightBlockBold                    { LazyButtonActive },
		MasonHighlightBlockSecondary               { },
		MasonHighlightBlockBoldSecondary           { },
		MasonHighlightSecondary                    { },
		MasonError                                 { },
		MasonWarning                               { },
		MasonHeading                               { },
    User1                                      { fg="#d7c483", bg="#bb7744", },
    User2                                      { fg="#d7c483", bg="#666666", },
    User3                                      { fg="#d7c483", bg="#b36d43", },
    User4                                      { fg="#d7c483", bg="#222222", },
    User5                                      { fg="#d7c483", bg="#bb7744", },
    User6                                      { fg="#d7c483", bg="#c9a554", },
    User7                                      { fg="#d7c483", bg="#78824b", },
    User8                                      { fg="#d7c483", bg="#b36d43", },
    User9                                      { fg="#d7c483", bg="#666666", },
    htmlTagName                                { fg="#5f875f", },
    htmlTag                                    { fg="#5f875f", },
    htmlEndTag                                 { htmlTag },
    htmlArg                                    { fg="#5f875f", },
    htmlH1                                     { gui="bold", },
    htmlBold                                   { gui="bold", },
    htmlItalic                                 { gui="underline", },
    htmlUnderline                              { gui="underline", },
    htmlUnderlineItalic                        { gui="underline", },
    htmlBoldItalic                             { gui="bold,underline", },
    htmlBoldUnderline                          { gui="bold,underline", },
    htmlBoldUnderlineItalic                    { gui="bold,underline", },
    xmlTagName                                 { fg="#78834b", },
    xmlString                                  { xmlTagName },
    xmlTag                                     { fg="#78824b", },
    xmlAttrib                                  { xmlTag },
    xmlEndTag                                  { xmlTag },
    xmlEqual                                   { xmlTag },
    phpSpecialFunction                         { fg="#bb7744", },
    phpIdentifier                              { fg="#b36d43", },
    phpVarSelector                             { phpIdentifier },
    markdownBold                               { gui="bold", },
    markdownItalic                             { gui="underline", },
    gitCommitBranch                            { fg="#b36d43", },
    gitCommitSelectedType                      { fg="#5f875f", },
    gitCommitSelectedFile                      { fg="#5f875f", },
    gitCommitUnmergedType                      { fg="#685742", },
    gitCommitDiscardedType                     { gitCommitUnmergedType },
    gitCommitUnmergedFile                      { fg="#685742", },
    gitCommitUntrackedFile                     { gitCommitUnmergedFile },
    gitCommitDiscardedFile                     { gitCommitUnmergedFile },
    GitSignsAdd                                { fg="#5f875f", bg="#1c1c1c", },
    GitSignsChange                             { fg="#685742", bg="#1c1c1c", },
    GitSignsDelete                             { fg="#b36d43", bg="#1c1c1c", },
    lessVariable                               { fg="#b36d43", },
    shDerefSimple                              { fg="#b36d43", },
    shDerefVar                                 { shDerefSimple },
    mustacheSection                            { gui="bold", },
    mustacheMarker                             { fg="#bb7744", },
    mustacheVariable                           { fg="#c9a554", },
    mustacheVariableUnescape                   { fg="#685742", },
    mustachePartial                            { fg="#bb7744", },
    SyntasticErrorSign                         { fg="#b36d43", },
    SyntasticWarningSign                       { fg="#685742", },
    netrwExe                                   { fg="#685742", },
    netrwClassify                              { fg="#666666", gui="bold", },
    LspBorderBG                                { fg="#685742", bg="#222222", },
    DiagnosticHintFloating                     { fg="#78824b", },
    DiagnosticVirtualTextWarning               { fg="#d7c483", },
    DiagnosticWarning                          { fg="#b36d43", },
    DiagnosticFloatingWarning                  { DiagnosticWarning },
    DiagnosticWarningFloating                  { fg="#d7c483", },
    LspFloatWinNormal                          { fg="#d7c483", bg="#43492a", },
    LspReferenceRead                           { fg="#5f875f", gui="bold,undercurl", sp="#fd9720", },
    LspReferenceText                           { fg="#d7c483", gui="bold,undercurl", bg="#43492a", sp="#fd9720", },
    LspReferenceWrite                          { fg="#5f875f", gui="bold,undercurl", sp="#fd9720", },
    LspSignatureActiveParameter                { gui="bold,underline,italic", sp="#fbec9f", },
    TelescopeSelectionCaret                    { fg="#d7c483", bg="#78824b", },
    TelescopeBorder                            { fg="#685742", bg="#1c1c1c", },
    TelescopePromptCounter                     { TelescopeBorder },
    TelescopeResultsBorder                     { TelescopeBorder },
    TelescopePreviewBorder                     { TelescopeBorder },
    TelescopeTitle                             { fg="#5f875f", bg="#1c1c1c", },
    TelescopePromptTitle                       { TelescopeTitle },
    TelescopeResultsTitle                      { TelescopeTitle },
    TelescopePreviewTitle                      { TelescopeTitle },
    TelescopePromptPrefix                      { TelescopeTitle },
    TelescopePromptBorder                      { fg="#b36d43", bg="#1c1c1c", },
    IndentBlanklineChar                        { fg="#242d1d", gui="nocombine", },
    IndentBlanklineSpaceChar                   { IndentBlanklineChar },
    IndentBlanklineSpaceCharBlankline          { IndentBlanklineChar },
    IndentBlanklineContextChar                 { fg="#43492a", gui="nocombine", },
    IndentBlanklineContextSpaceChar            { IndentBlanklineContextChar },
    IndentBlanklineContextStart                { IndentBlanklineContextChar },
    ScrollbarHandle                            { blend=0, bg="#1c1c1c", },
    ScrollbarSearch                            { fg="#c9a554", },
    ScrollbarSearchHandle                      { fg="#c9a554", blend=0, bg="#1c1c1c", },
    ScrollbarError                             { fg="#685742", },
    ScrollbarErrorHandle                       { fg="#685742", blend=0, bg="#1c1c1c", },
    ScrollbarWarn                              { fg="#b36d43", },
    ScrollbarWarnHandle                        { fg="#b36d43", blend=0, bg="#1c1c1c", },
    ScrollbarInfo                              { fg="#5f875f", },
    ScrollbarInfoHandle                        { fg="#5f875f", blend=0, bg="#1c1c1c", },
    ScrollbarCursor                            { fg="#222222", },
    ScrollbarCursorHandle                      { fg="#222222", blend=0, bg="#1c1c1c", },
    ScrollbarHint                              { fg="#5f875f", },
    ScrollbarHintHandle                        { fg="#5f875f", blend=0, bg="#1c1c1c", },
    ScrollbarGitChange                         { fg="#685742", },
    ScrollbarGitChangeHandle                   { fg="#685742", blend=0, bg="#1c1c1c", },
    ScrollbarGitDelete                         { fg="#b36d43", },
    ScrollbarGitDeleteHandle                   { fg="#b36d43", blend=0, bg="#1c1c1c", },
    ScrollbarGitAdd                            { fg="#5f875f", },
    ScrollbarGitAddHandle                      { fg="#5f875f", blend=0, bg="#1c1c1c", },
    ScrollbarMisc                              { fg="#bb7744", },
    ScrollbarMiscHandle                        { fg="#bb7744", blend=0, bg="#1c1c1c", },
    WhichKey                                   { bg="#1c1c1c", fg="#d7c483" },
    WhichKeyBorder                             { bg="#1c1c1c", },
    WhichKeyDesc                               { fg="#5f875f", bg="#1c1c1c",},
    WhichKeyGroup                              { bg="#1c1c1c",},
    WhichKeySeparator                          { bg="#1c1c1c", fg="#c9a554", },
    WhichKeyFloat                              { bg="#1c1c1c",},
    WhichKeyValue                              { fg="#c9a554", },
    TelescopeResultsIdentifier                 { },
    TelescopeResultsLineNr                     { },
    TelescopeResultsVariable                   { },
    TelescopeResultsStruct                     { },
    TelescopeResultsOperator                   { },
    TelescopeResultsMethod                     { },
    TelescopeResultsFunction                   { },
    TelescopeResultsField                      { },
    TelescopeResultsConstant                   { },
    TelescopeResultsClass                      { },
    TelescopeResultsDiffUntracked              { },
    TelescopePreviewMessageFillchar            { },
    TelescopePreviewMessage                    { },
    TelescopePreviewNormal                     { },
    TelescopeNormal                            { },
    TelescopePreviewDate                       { },
    TelescopePreviewGroup                      { },
    TelescopePreviewUser                       { },
    TelescopePreviewSize                       { },
    TelescopePreviewSticky                     { },
    TelescopePreviewHyphen                     { },
    TelescopePreviewExecute                    { },
    TelescopePreviewWrite                      { },
    TelescopePreviewRead                       { },
    TelescopePreviewSocket                     { },
    TelescopePreviewLink                       { },
    TelescopePreviewBlock                      { },
    TelescopePreviewDirectory                  { },
    TelescopePreviewCharDev                    { },
    TelescopePreviewPipe                       { },
    TelescopePreviewMatch                      { },
    TelescopePreviewLine                       { },
    TelescopeResultsNormal                     { },
    TelescopePromptNormal                      { },
    TelescopeMultiIcon                         { },
    TelescopeMultiSelection                    { },
    TelescopeResultsSpecialComment             { },
    TelescopeResultsComment                    { },
    TelescopeResultsNumber                     { },
  }
end)
---@diagnostic disable
return theme
