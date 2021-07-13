local help_message = [[
yaml-cpp 0.7

This module loads the yaml-cpp, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: yaml-cpp")
whatis("Version: 0.7")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://github.com/jbeder/yaml-cpp")

prepend_path("LD_LIBRARY_PATH",     "/util/opt/yaml-cpp/0.7/intel/20/lib64")
prepend_path("INCLUDE",             "/util/opt/yaml-cpp/0.7/intel/20/include")

family("yaml-cpp")

prepend_path("CPATH",            "/util/opt/yaml-cpp/0.7/intel/20/include")
prepend_path("LIBRARY_PATH",     "/util/opt/yaml-cpp/0.7/intel/20/lib64")
prepend_path("PKG_CONFIG_PATH",  "/util/opt/yaml-cpp/0.7/intel/20/lib64/pkgconfig")
prepend_path("PKG_CONFIG_PATH",  "/util/opt/yaml-cpp/0.7/intel/20/share/pkgconfig")

setenv("YAMLCPP",                  "/util/opt/yaml-cpp/0.7/intel/20")
