help(
[[
This module load OpenBLAS.
Version 0.3.18
]])

whatis("Name: OpenBLAS")
whatis("Version: 0.3.18")
whatis("Category: library, tools")
whatis("Keywords: Linear Algebra, Library, Mathematics, BLAS, LAPACK")
whatis("URL: https://www.openblas.net")
whatis("Description: Numerical library, contains blas/lapack")

setenv("OPENBLAS",                     "/util/opt/openblas/3.3/gcc/7.1")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/openblas/0.3/gcc/7.1/lib")
prepend_path("LIBRARY_PATH",     "/util/opt/openblas/0.3/gcc/7.1/lib")
prepend_path("CPATH",     "/util/opt/openblas/0.3/gcc/7.1/include")
prepend_path("PKG_CONFIG_PATH",  "/util/opt/openblas/0.3/gcc/7.1/lib/pkgconfig")

family("blas")
