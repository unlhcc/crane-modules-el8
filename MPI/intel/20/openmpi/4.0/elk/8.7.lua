local help_message = [[
ELK 8.7.10

This module loads ELK, built with the Intel compilers.

]]

help(help_message,"\n")

whatis("Name: ELK")
whatis("Version: 8.7.10")
whatis("Category: library, runtime support")
whatis("Keywords: DFT, System, Library")
whatis("URL: http://elk.sourceforge.net/")

load("intel-mkl/20","fftw3/3.3")

prepend_path("PATH","/util/opt/elk/8.7/intel/20/openmpi/4.0/bin/")

family("elk")
