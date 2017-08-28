package = "citeproc-lua"
version = "0.0.1-1"
source = {
  url = "https://github.com/michal-h21/citeproc-lua/archive/v0.0.1.tar.gz",
  dir = "citeproc-lua-0.0.1-1"
}
description = {
  summary = "citeproc-lua",
  detailed = [[
    Citation stylesheet language (CSL) processof for Lua
  ]],
  homepage = "https://github.com/michal-h21/citeproc-lua/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
   modules = {
    ["citeproc-lua"] = "src/citeproc-lua.lua"
  }
}
