package = "grust"
version = "scm-1"

source = {
   url = "git://github.com/Cadene/grust.torch",
   tag = "master"
}

description = {
   summary = "GRU for skip-thoughts models in Torch7",
   detailed = [[
Gated Recurrent Units architecture for Skip Thoughts vectors in Torch7 nn
   ]],
   homepage = "https://github.com/Cadene/grust.torch",
   license = "MIT License"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      LUA_PATH="$(LUADIR)",
      LUA_CPATH="$(LIBDIR)"
   }
}