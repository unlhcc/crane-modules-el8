local help_message = [[
Library for Bayesian error estimation functionals for use in density functional theory codes
]]

help(help_message,"\n")

whatis("Name: libbeef")
whatis("Version: 0.1.3")
whatis("Category: Physics, Mathematics")
whatis("Keywords: Physics, Mathematics")
whatis("URL: https://github.com/vossjo/libbeef")

prepend_path("PATH",                "/util/opt/libbeef/0.1.3/gcc/9/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/libbeef/0.1.3/gcc/9/lib")
prepend_path("LIBRARY_PATH",        "/util/opt/libbeef/0.1.3/gcc/9/lib")

setenv("LIBBEEF", "/util/opt/libbeef/0.1.3/gcc/9")

family("libbeef")
