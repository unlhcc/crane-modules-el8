help(
[[
The mkl module file defines the following environment variables:
%{MODULE_VAR}_DIR, %{MODULE_VAR}_DOC, %{MODULE_VAR}_BIN, for the
location of the mkl distribution,  documentation, binaries, respectively.

The specific syntax required for linking against MKL depends on
the desired threading and ILP settings.  For more information, consult
the Intel Link advisor at:

http://software.intel.com/en-us/articles/intel-mkl-link-line-advisor/
]])

whatis("Name: Intel Math Kernel Library")
whatis("Version: 2022.1")
whatis("Category: library, tools")
whatis("Keywords: Linear Algebra, Library, Mathematics, BLAS, LAPACK")
whatis("URL: http://software.intel.com/en-us/intel-mkl/")
whatis("Description: Numerical library, contains blas/lapack")

setenv("MKLROOT","/util/opt/intel-oneapi/2022.2.0.262/mkl/2022.1.0")
prepend_path("LD_LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/mkl/2022.1.0/lib/intel64")
prepend_path("LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/mkl/2022.1.0/lib/intel64")
prepend_path("CPATH","/util/opt/intel-oneapi/2022.2.0.262/mkl/2022.1.0/include")
prepend_path("PKG_CONFIG_PATH","/util/opt/intel-oneapi/2022.2.0.262/mkl/2022.1.0/lib/pkgconfig")
prepend_path("NLSPATH","/util/opt/intel-oneapi/2022.2.0.262/mkl/2022.1.0/lib/intel64/locale/%l_%t/%N")
