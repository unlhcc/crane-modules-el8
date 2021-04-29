local help_message = [[
Trilinos 13.0

The Trilinos Project is an effort to develop algorithms and enabling technologies within an object-oriented software framework for the solution of large-scale, complex multi-physics engineering and scientific problems. A unique design feature of Trilinos is its focus on packages.

]]

help(help_message,"\n")

whatis("Name: Trilinos")
whatis("Version: 13.0")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://trilinos.org/")

setenv("TRILINOS", "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2")
prepend_path("PATH",                "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/lib")
prepend_path("LIBRARY_PATH",     "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/lib")
prepend_path("INCLUDE",             "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/include")
prepend_path("CPATH",               "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/include")
prepend_path("LIBRARY_PATH",        "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/lib")
prepend_path("PKG_CONFIG_PATH",     "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/lib/pkgconfig")
prepend_path("PYTHONPATH",    "/util/opt/trilinos/13.0/openmpi/4.0/gcc/10.2/lib/python3.8/site-packages")

load("pnetcdf/4.7","phdf5/1.12","matio/1.5","intel-mkl/20")
prereq("perl/5.26","python/3.8")
family("trilinos")
