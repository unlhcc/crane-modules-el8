local help_message = [[
SuiteSparse 5.10.1

This module loads SuiteSparse, built with the GCC
compilers.

]]

help(help_message,"\n")

whatis("Name: suitesparse")
whatis("Version: 5.10.1")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("Description: SuiteSparse: A Suite of Sparse matrix packages.")
whatis("URL: https://people.engr.tamu.edu/davis/suitesparse.html")

prepend_path("PATH",     "/util/opt/suitesparse/5.10/gcc/10.2/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/suitesparse/5.10/gcc/10.2/lib")
prepend_path("LIBRARY_PATH",     "/util/opt/suitesparse/5.10/gcc/10.2/lib")
prepend_path("CPATH",             "/util/opt/suitesparse/5.10/gcc/10.2/include")
setenv("SUITESPARSE", "/util/opt/suitesparse/5.10/gcc/10.2")

family("suitesparse")
