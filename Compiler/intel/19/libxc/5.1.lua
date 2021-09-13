local help_message = [[
This is the Libxc project (http://www.tddft.org/programs/Libxc) by
Prof. Miguel A.L. Marques of Martin-Luther-Universität Halle-Wittenberg.

Libxc is written in C. It has source and manual are available at the above
website and, as distributed, builds with make.
]]

help(help_message,"\n")

whatis("Name: libxc")
whatis("Version: 5.1.6")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: https://gitlab.com/libxc/libxc")

prepend_path("PATH",                "/util/opt/libxc/5.1/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libxc/5.1/intel/19/lib")
prepend_path("INCLUDE",             "/util/opt/libxc/5.1/intel/19/include")

prepend_path("CPATH",               "/util/opt/libxc/5.1/intel/19/include")
prepend_path("LIBRARY_PATH",        "/util/opt/libxc/5.1/intel/19/lib")

setenv("LIBXC", "/util/opt/libxc/5.1/intel/19/bin")

family("libxc")
