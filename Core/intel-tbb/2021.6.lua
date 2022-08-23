local help_message = [[
Intel TBB 2021.6

This module loads the Intel(R) oneAPI Thread Building Blocks (TBB) environment.

]]

help(help_message,"\n")

whatis("Name: intel-tbb")
whatis("Version: 2021.6")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://www.intel.com/content/www/us/en/developer/tools/oneapi/onetbb.html")
whatis([===[Intel(R) oneAPI Threading Building Blocks for intel64. ]===])

conflict("tbb32")
conflict("tbb")

setenv("TBBROOT","/util/opt/intel-oneapi/2022.2.0.262/tbb/2021.6.0")
prepend_path("CPATH","/util/opt/intel-oneapi/2022.2.0.262/tbb/2021.6.0/include")
prepend_path("LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/tbb/2021.6.0/lib/intel64/gcc4.8")
prepend_path("LD_LIBRARY_PATH","/util/opt/intel-oneapi/2022.2.0.262/tbb/2021.6.0/lib/intel64/gcc4.8")
prepend_path("CMAKE_PREFIX_PATH","/util/opt/intel-oneapi/2022.2.0.262/tbb/2021.6.0")
