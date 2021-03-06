local help_message = [[
Intel Compilers 12 (2011.9)

This module loads Intel Compiler variables.
The command directory is added to PATH.
The library directory is added to LD_LIBRARY_PATH.
The include directory is added to INCLUDE.
The man     directory is added to MANPATH.
]]

help(help_message,"\n")

whatis("Name: Intel Compilers")
whatis("Version: 12")
whatis("Category: compiler")
whatis("Keywords: System, compiler")
whatis("URL: http://www.intel.com")

prepend_path("PATH",                "/util/comp/intel/12/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/comp/intel/12/lib/intel64")
prepend_path("LIBRARY_PATH",     "/util/comp/intel/12/lib/intel64")
prepend_path("MANPATH",             "/util/comp/intel/12/man/en_US")
prepend_path("INCLUDE",             "/util/comp/intel/12/include")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"Compiler","intel","12")
prepend_path("MODULEPATH",          mdir)

setenv("CC",	"icc")
setenv("FC",	"ifort")
setenv("F90",	"ifort")
setenv("F77",	"ifort")
setenv("CXX",	"icpc")
setenv("INTEL_LICENSE_FILE",    "/util/comp/intel/USE_SERVER.lic")

setenv("CFLAGS",         "-march=corei7-avx")
setenv("FFLAGS",         "-march=corei7-avx")
setenv("CXXFLAGS",       "-march=corei7-avx")
setenv("F90FLAGS",       "-march=corei7-avx")
setenv("FCFLAGS",        "-march=corei7-avx")

family("compiler")
