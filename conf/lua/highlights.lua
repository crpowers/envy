-- Highlight groups

-- Core color palette
local black = "#0d0d0d"
local white = "#f7f7f7"
local dark = "#000000"
local bright = "#ffffff"

local grey0 = "#808080"
local grey1 = "#646464"
local grey2 = "#565656"
local grey3 = "#474747"
local grey4 = "#313131"
local grey5 = "#262626"
local grey6 = "#1a1a1a"

local orange = "#fdd6b6"
local cream = "#fbfbcf"
local red = "#ff4353"
local melon = "#ff909d"
local green = "#89ffcb"
local tea = "#d3ffdb"
local pink = "#ffc9f8"
local purple = "#d7afff"
local blue = "#c0ceff"
local turq = "#bcffff"

local highlights = {
  -- Syntax
  Comment = { fg = grey1, italic = true },
  Constant = { fg = cream }, -- DONE
  String = { fg = tea }, -- DONE
  Character = { fg = tea }, -- DONE
  Number = { fg = melon }, -- DONE 
  Boolean = { fg = orange }, -- DONE
  Float = { fg = melon }, -- DONE
  Identifier = { fg = cream }, -- DONE 
  Function = { fg = blue },
  Conditional = { fg = turq },
  Statement = { fg = purple },
  Repeat = { fg = turq },
  Label = { fg = purple },
  Operator = { fg = green },
  Keyword = { fg = turq },
  Exception = { fg = red },
  PreProc = { fg = purple },
  PreCondit = { fg = purple },
  Include = { fg = green },
  Define = { fg = green },
  Type = { fg = pink },
  StorageClass = { fg = pink },
  Structure = { fg = purple },
  Typedef = { fg = purple },
  Special = { fg = pink },
  Delimiter = { fg = white },
  Underlined = { fg = white },
  Bold = { bold = true },
  Italic = { italic = true },
  Error = { fg = red },

  -- Editor
  LineNr = { fg = grey1 },
  CursorLineNr = { fg = green, bg = black },
  CursorLineSign = { bg = black },
  CursorLine = { bg = grey6 },
  SignColumn = { bg = black },
  Cursor = { bg = white, fg = black },
  lCursor = { link = "Cursor" },
  CursorIM = { link = "Cursor" },
  Directory = { fg = white },
  DiffAdd = { bg = green, fg = white },
  DiffChange = { bg = blue, fg = white },
  DiffDelete = { bg = red, fg = white },
  EndOfBuffer = { fg = grey1, bg = black },
  ErrorMsg = { fg = red },
  WinSeperator = { fg = black, bg = black },
  VertSplit = { link = "WinSeperator" },
  MatchParen = { link = "Cursor" },
  Normal = { fg = white, bg = black },
  NormalFloat = { fg = white, bg = grey4 },
  NvimFloat = { link = "NormalFloat" },
  FloatBorder = { fg = grey4, bg = grey4 },
  FloatTitle = { fg = grey4, bg = green, bold = true },
  FloatFooter = { link = "NormalFloat" },
  MsgArea = { link = "Normal" },
  ModeMsg = { link = "NormalFloat" },
  NormalNC = { link = "Normal" },
  Pmenu = { fg = white, bg = grey5 },
  PmenuSel = { fg = bright, bg = grey4 },
  PmenuSbar = { fg = grey3, bg = grey5 },
  PmenuThumb = { bg = green },
  Visual = { bg = grey3 },
  VisualNOS = { link = "Visual" },

  -- Diagnostics
  DiagnosticError = { fg = red },
  DiagnosticWarn = { fg = orange },
  DiagnosticInfo = { fg = blue },
  DiagnosticHint = { fg = green },

  -- Telescope
  TelescopeTitle = { fg = grey6, bg = green, bold = true },
  TelescopeBorder = { fg = grey6, bg = grey6 },
  TelescopeNormal = { fg = white, bg = grey6 },

  -- Trouble
  TroubleNormal = { fg = white, bg = grey6 },

  -- Status line
  LineNormal = { fg = white, bg = grey5 },
  LineTitle = { fg = bright, bg = grey5, bold = true },
  LineImportant = { fg = turq, bg = black, bold = true },
  LineError = { fg = red, bg = grey5 },
  LineWarn = { fg = orange, bg = grey5 },
  LineInfo = { fg = blue, bg = grey5 },
  LineHint  = { fg = green, bg = grey5 },
}

for hl, spec in pairs(highlights) do
  vim.api.nvim_set_hl(0, hl, spec)
end
