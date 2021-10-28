local help_message = [[
Clang/LLVM Compilers 13.0

This module loads Clang/LLVM Compiler variables.
The command directory is added to PATH.
The library directory is added to LD_LIBRARY_PATH.
The include directory is added to INCLUDE.
The man     directory is added to MANPATH.
]]

help(help_message,"\n")

whatis("Name: Clang Compilers")
whatis("Version: 13.0")
whatis("Category: compiler")
whatis("Keywords: System, compiler")
whatis("URL: https://clang.llvm.org/index.html")

prepend_path("PATH",                "/util/comp/clang/13.0/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/comp/clang/13.0/lib")
prepend_path("LIBRARY_PATH",     "/util/comp/clang/13.0/lib")
prepend_path("MANPATH",             "/util/comp/clang/13.0/share/man")
prepend_path("INCLUDE",             "/util/comp/clang/13.0/include")
setenv("CLANG", "/util/comp/clang/13.0")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"Compiler","clang","13.0")
prepend_path("MODULEPATH",          mdir)

setenv("CC",	"clang")
setenv("CXX",	"clang++")

append_path("CFLAGS","-march=sandybridge", " ")
append_path("CXXFLAGS","-march=sandybridge", " ")

family("compiler")
