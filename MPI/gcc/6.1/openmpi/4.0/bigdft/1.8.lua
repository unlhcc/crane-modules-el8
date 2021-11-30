help (
[[
This module loads BigDFT
Version 1.8.3
]])

whatis("Name: BigDFT")
whatis("Version: 1.8.3")
whatis("Category: Physics, Simulation")
whatis("Keywords: Physics, Simulation")
whatis("Description: A fast, precise, and flexible DFT code for ab-initio atomistic simulation.")
whatis("URL: https://bigdft.org/")

prepend_path("PATH", "/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/build/install/bin")
setenv("BIGDFT_ROOT","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/build/install/bin")
setenv("BIGDFT_SOURCES","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/src/spred-suite/bigdft")
setenv("CHESS_ROOT","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/build/install/bin")
setenv("CHESS_SOURCES","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/src/spred-suite/chess")
setenv("FUTILE_SOURCES","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/src/spred-suite/futile")
setenv("GI_TYPELIB_PATH","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/build/install/lib/girepository-1.0")
prepend_path("LD_LIBRARY_PATH","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/build/install/lib")
prepend_path("PKG_CONFIG_PATH","/util/opt/bigdft/1.8/openmpi/4.0/gcc/6.1/build/install/lib/pkgconfig")
setenv("PYTHONPATH","/util/opt/bigdft/1.8.3/openmpi/4.0/gcc/6.1/build/install/lib/python2.7/site-packages")

load("intel-mkl/19","python/2.7")
