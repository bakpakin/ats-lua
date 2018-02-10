package = "libatscc2lua"
version = "0.0-0"
source = {
    -- TODO make tarball for rock
   url = "git://github.com/bakpakin/ats-lua",
}
description = {
   summary = "Runtime library for ATS when compiled to Lua.",
   detailed = [[
   Runtime library for ATS when compiled to Lua. Pure Lua, does
   not contain native code or binaries.
   ]],
   homepage = "https://github.com/bakpakin/ats-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      basics = "basic_cats.lua"
      bool = "bool_cats.lua"
      float = "float_cats.lua"
      integer = "integer_cats.lua"
      print = "print_cats.lua"
   }
}
