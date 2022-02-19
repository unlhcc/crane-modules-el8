help(
[[
This module load the reference implemantation of MINPACK from netlib.org.

Version 19961126
]]
)

whatis("Name: minpack")
whatis("Version: 19961126")
whatis("Category: Utility, Mathematics")
whatis("Keywords: Utility, Mathematics")
whatis("URL: http://www.netlib.org/minpack/")
whatis("Description: Minpack includes software for solving nonlinear equations and nonlinear least squares problems.")

prepend_path("LD_LIBRARY_PATH",   "/util/opt/minpack/19961126/gcc/10/lib")
prepend_path("LIBRARY_PATH",   "/util/opt/minpack/19961126/gcc/10/lib")
prepend_path("CPATH",  "/util/opt/minpack/19961126/gcc/10/lib")
setenv("MINPACK", "/util/opt/minpack/19961126/gcc/10")
