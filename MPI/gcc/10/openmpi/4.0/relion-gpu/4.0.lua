local help_message = [[
RELION (for REgularised LIkelihood OptimisatioN) is a stand-alone computer program for Maximum A Posteriori refinement of (multiple) 3D reconstructions or 2D class averages in cryo-electron microscopy. It is developed in the research group of Sjors Scheres at the MRC Laboratory of Molecular Biology.

Please note: This module only provides the RELION CLI tools. For GUI access, use the RELION Open OnDemand app.

This module loads GPU-enabled RELION.
]]

help(help_message,"\n")

whatis("Name: RELION")
whatis("Version: 4.0.0")
whatis("Category: Physics, Chemistry")
whatis("Keywords: Physics, Chemistry")
whatis("URL: https://github.com/3dem/relion")

prepend_path("PATH",                "/util/opt/relion/4.0-gpu/openmpi/4.0/gcc/10/bin")
prepend_path("LIBRARY_PATH",        "/util/opt/relion/4.0-gpu/openmpi/4.0/gcc/10/lib")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/relion/4.0-gpu/openmpi/4.0/gcc/10/lib")
load("cuda/11.4","intel-mkl/20","zlib/1.2","libtiff/4.1","libpng/1.6","libjpeg/2.0","intel-tbb/2021")
