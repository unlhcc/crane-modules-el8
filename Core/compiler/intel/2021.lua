local help_message = [[
Intel Compilers 2021.6

This module loads Intel Compiler variables.
The command directory is added to PATH.
The library directory is added to LD_LIBRARY_PATH.
The include directory is added to INCLUDE.
The man     directory is added to MANPATH.
]]

help(help_message,"\n")

whatis("Name: Intel Compiler")
whatis("Version: 2021.6")
whatis("Category: compiler")
whatis("Keywords: System, compiler")
whatis("URL: http://www.intel.com")

local mroot = os.getenv("MODULEPATH_ROOT") or "/util/opt/modulefiles"
local mdir = pathJoin(mroot,"Compiler","intel","2021")
prepend_path("MODULEPATH",          mdir)

load("intel-tbb/2021.6")

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

prepend_path("LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/lib")
prepend_path("LD_LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/compiler/lib/intel64_lin")
prepend_path("LD_LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/lib/x64")
prepend_path("LD_LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/lib")
prepend_path("DIAGUTIL_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/sys_check/sys_check.sh")

setenv("CMPLR_ROOT","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0")
append_path("OCL_ICD_FILENAMES","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/lib/x64/libintelocl.so")
prepend_path("PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/bin")
prepend_path("PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/bin/intel64")
append_path("MANPATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/documentation/en/man/common")
prepend_path("CMAKE_PREFIX_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/IntelDPCPP")
prepend_path("NLSPATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/linux/compiler/lib/intel64_lin/locale/%l_%t/%N")
prepend_path("DIAGUTIL_PATH","/util/opt/intel-oneapi/2022.2.0.262/compiler/2022.1.0/sys_check/sys_check.sh")
