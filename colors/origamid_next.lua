
-- File: colors/origamid_next.lua
-- Neovim colorscheme inspired by VS Code "Origamid Next"
-- Supports core UI, Treesitter, Telescope, and Snacks.nvim
-- Install: place this file at `~/.config/nvim/colors/origamid_next.lua`
-- Enable:  `:colorscheme origamid_next`

local colors = {
  bg          = "#0e1116", -- dark background
  bg_alt      = "#12161e", -- slightly lighter
  fg          = "#d9dee7", -- main foreground
  fg_dim      = "#b7becb",
  muted       = "#8c95a3",
  comment     = "#667085",
  selection   = "#1b2330",
  line        = "#151a22",
  border      = "#242b36",
  accent      = "#f0c86b", -- warm yellow accent (Origamid vibe)
  orange      = "#f2a272",
  red         = "#e05f65",
  magenta     = "#d16d9e",
  purple      = "#b38df7",
  blue        = "#7fb0ff",
  cyan        = "#6bd3e6",
  green       = "#7ad38b",
  yellow      = "#f2d28b",
  error_bg    = "#2b1b1e",
  warn_bg     = "#2b2418",
  info_bg     = "#17222c",
  hint_bg     = "#17251e",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.g.colors_name = "origamid_next"
vim.opt.termguicolors = true

-- ===== Base UI =====
hi("Normal",         { fg = colors.fg, bg = colors.bg })
hi("NormalNC",       { fg = colors.fg_dim, bg = colors.bg })
hi("Comment",        { fg = colors.comment })
hi("Constant",       { fg = colors.orange })
hi("String",         { fg = colors.green })
hi("Character",      { fg = colors.green })
hi("Number",         { fg = colors.orange })
hi("Boolean",        { fg = colors.orange })
hi("Float",          { fg = colors.orange })
hi("Identifier",     { fg = colors.fg })
hi("Function",       { fg = colors.accent, bold = true })
hi("Statement",      { fg = colors.purple })
hi("Conditional",    { fg = colors.purple })
hi("Repeat",         { fg = colors.purple })
hi("Label",          { fg = colors.blue })
hi("Operator",       { fg = colors.cyan })
hi("Keyword",        { fg = colors.magenta })
hi("Exception",      { fg = colors.red })
hi("PreProc",        { fg = colors.cyan })
hi("Include",        { fg = colors.cyan })
hi("Define",         { fg = colors.cyan })
hi("Macro",          { fg = colors.cyan })
hi("Type",           { fg = colors.blue })
hi("StorageClass",   { fg = colors.blue })
hi("Structure",      { fg = colors.blue })
hi("Typedef",        { fg = colors.blue })
hi("Special",        { fg = colors.yellow })
hi("SpecialComment", { fg = colors.muted })
hi("Error",          { fg = colors.red, bold = true })
hi("Todo",           { fg = colors.accent, bold = true })

hi("CursorLine",     { bg = colors.line })
hi("CursorLineNr",   { fg = colors.accent, bold = true })
hi("LineNr",         { fg = colors.muted })
hi("SignColumn",     { bg = colors.bg })
hi("FoldColumn",     { fg = colors.muted, bg = colors.bg })
hi("Folded",         { fg = colors.muted, bg = colors.selection })

hi("Pmenu",          { fg = colors.fg, bg = colors.selection })
hi("PmenuSel",       { fg = colors.bg, bg = colors.accent, bold = true })
hi("PmenuSbar",      { bg = colors.line })
hi("PmenuThumb",     { bg = colors.border })

hi("Visual",         { bg = colors.selection })
hi("Search",         { fg = colors.bg, bg = colors.yellow, bold = true })
hi("IncSearch",      { fg = colors.bg, bg = colors.orange, bold = true })
hi("MatchParen",     { fg = colors.accent, bold = true })

hi("StatusLine",     { fg = colors.fg, bg = colors.bg_alt })
hi("StatusLineNC",   { fg = colors.muted, bg = colors.bg })
hi("WinSeparator",   { fg = colors.border })
hi("VertSplit",      { fg = colors.border })
hi("TabLine",        { fg = colors.muted, bg = colors.bg_alt })
hi("TabLineSel",     { fg = colors.bg, bg = colors.accent, bold = true })
hi("TabLineFill",    { fg = colors.muted, bg = colors.bg })

hi("NormalFloat",    { fg = colors.fg, bg = colors.bg_alt })
hi("FloatBorder",    { fg = colors.border, bg = colors.bg_alt })
hi("FloatTitle",     { fg = colors.accent, bg = colors.bg_alt, bold = true })

hi("DiagnosticError", { fg = colors.red })
hi("DiagnosticWarn",  { fg = colors.yellow })
hi("DiagnosticInfo",  { fg = colors.blue })
hi("DiagnosticHint",  { fg = colors.green })
hi("DiagnosticOk",    { fg = colors.green })

hi("DiagnosticVirtualTextError", { fg = colors.red, bg = colors.error_bg })
hi("DiagnosticVirtualTextWarn",  { fg = colors.yellow, bg = colors.warn_bg })
hi("DiagnosticVirtualTextInfo",  { fg = colors.blue, bg = colors.info_bg })
hi("DiagnosticVirtualTextHint",  { fg = colors.green, bg = colors.hint_bg })

hi("DiffAdd",    { fg = colors.green, bg = "NONE" })
hi("DiffChange", { fg = colors.yellow, bg = "NONE" })
hi("DiffDelete", { fg = colors.red, bg = "NONE" })
hi("DiffText",   { fg = colors.blue, bg = "NONE", bold = true })

-- ===== Treesitter (modern groups) =====
hi("@comment",              { fg = colors.comment })
hi("@punctuation",          { fg = colors.muted })
hi("@string",               { fg = colors.green })
hi("@string.escape",        { fg = colors.yellow })
hi("@constant",             { fg = colors.orange })
hi("@constant.builtin",     { fg = colors.orange, bold = true })
hi("@number",               { fg = colors.orange })
hi("@boolean",              { fg = colors.orange })
hi("@variable",             { fg = colors.fg })
hi("@variable.builtin",     { fg = colors.magenta })
hi("@variable.parameter",   { fg = colors.fg })
hi("@field",                { fg = colors.fg })
hi("@property",             { fg = colors.fg })
hi("@function",             { fg = colors.accent, bold = true })
hi("@function.builtin",     { fg = colors.accent, bold = true })
hi("@function.call",        { fg = colors.accent })
hi("@method",               { fg = colors.accent })
hi("@constructor",          { fg = colors.blue })
hi("@operator",             { fg = colors.cyan })
hi("@keyword",              { fg = colors.magenta })
hi("@keyword.function",     { fg = colors.magenta })
hi("@keyword.return",       { fg = colors.magenta })
hi("@conditional",          { fg = colors.purple })
hi("@repeat",               { fg = colors.purple })
hi("@type",                 { fg = colors.blue })
hi("@type.builtin",         { fg = colors.blue })
hi("@type.qualifier",       { fg = colors.cyan })
hi("@tag",                  { fg = colors.blue })
hi("@tag.attribute",        { fg = colors.green })
hi("@tag.delimiter",        { fg = colors.muted })

-- ===== Telescope =====
hi("TelescopeNormal",       { fg = colors.fg, bg = colors.bg_alt })
hi("TelescopeBorder",       { fg = colors.border, bg = colors.bg_alt })
hi("TelescopePromptNormal", { fg = colors.fg, bg = colors.bg_alt })
hi("TelescopePromptBorder", { fg = colors.border, bg = colors.bg_alt })
hi("TelescopePromptTitle",  { fg = colors.bg, bg = colors.accent, bold = true })
hi("TelescopeResultsNormal",{ fg = colors.fg, bg = colors.bg_alt })
hi("TelescopeResultsBorder",{ fg = colors.border, bg = colors.bg_alt })
hi("TelescopeResultsTitle", { fg = colors.accent, bg = colors.bg_alt, bold = true })
hi("TelescopePreviewNormal",{ fg = colors.fg, bg = colors.bg_alt })
hi("TelescopePreviewBorder",{ fg = colors.border, bg = colors.bg_alt })
hi("TelescopePreviewTitle", { fg = colors.bg, bg = colors.blue, bold = true })
hi("TelescopeSelection",    { bg = colors.selection })
hi("TelescopeMatching",     { fg = colors.accent, bold = true })

-- ===== Snacks.nvim (best-effort) =====
hi("SnacksPicker",          { fg = colors.fg, bg = colors.bg_alt })
hi("SnacksPickerBorder",    { fg = colors.border, bg = colors.bg_alt })
hi("SnacksPickerTitle",     { fg = colors.bg, bg = colors.accent, bold = true })
hi("SnacksPickerMatch",     { fg = colors.accent, bold = true })
hi("SnacksInput",           { fg = colors.fg, bg = colors.bg_alt })
hi("SnacksInputBorder",     { fg = colors.border, bg = colors.bg_alt })
hi("SnacksExplorer",        { fg = colors.fg, bg = colors.bg_alt })
hi("SnacksExplorerBorder",  { fg = colors.border, bg = colors.bg_alt })
hi("SnacksNotificationInfo",{ fg = colors.blue,  bg = colors.info_bg })
hi("SnacksNotificationWarn",{ fg = colors.yellow,bg = colors.warn_bg })
hi("SnacksNotificationError",{fg = colors.red,   bg = colors.error_bg })

-- LSP / Misc
hi("LspSignatureActiveParameter", { fg = colors.accent, bold = true })
hi("LspInlayHint", { fg = colors.muted, bg = colors.line })

hi("GitSignsAdd",    { fg = colors.green })
hi("GitSignsChange", { fg = colors.yellow })
hi("GitSignsDelete", { fg = colors.red })

hi("WhichKey",          { fg = colors.accent })
hi("WhichKeyGroup",     { fg = colors.blue })
hi("WhichKeySeparator", { fg = colors.muted })
hi("WhichKeyDesc",      { fg = colors.fg })

hi("Cursor",        { reverse = true })
hi("TermCursor",    { reverse = true })
hi("CursorColumn",  { bg = colors.line })

-- Optional transparent background:
-- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
