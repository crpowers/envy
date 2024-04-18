-- Define the components (Modules, strings) that make up the status line, and set up their autocommands.

local Line = require('statusline/line')
local Lib = require('statusline/libmodule') -- Collection of common line modules

local components = {
  "%#LineImportant#",
  Lib.mode,
  "%#LineNormal#",
  Lib.path,
  Lib.modified,
  Lib.permissions,
  Lib.position,
  "%=",
  Lib.lsp,
  Lib.diagnostics,
}

Line:setup(components)
