local help_message = [[
HDF-EOS2 2.20

This module loads HDF-EOS2, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: hdf-eos2")
whatis("Version: 2.20")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://hdfeos.org/software/library.php")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/hdf-eos2/2.20/intel/19/lib")
prepend_path("LIBRARY_PATH",     "/util/opt/hdf-eos2/2.20/intel/19/lib")
prepend_path("CPATH",           "/util/opt/hdf-eos2/2.20/intel/19/include")
setenv("HDFEOS2",                  "/util/opt/hdf-eos2/2.20/intel/19")

family("hdfeos2")
