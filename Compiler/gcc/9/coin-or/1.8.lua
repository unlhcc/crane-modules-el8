local help_message = [[
coin-or 1.8

Cbc (Coin-or branch and cut) is an open-source mixed integer linear programming solver written in C++. It can be used as a callable library or using a stand-alone executable. It can be used in a wide variety of ways through various modeling systems, packages, etc.]]

help(help_message,"\n")

whatis("Name: coin-or")
whatis("Version: 1.8")
whatis("Category: library, Open-source mixed integer linear programming solver")
whatis("Keywords: Library")
whatis("URL: https://github.com/coin-or/Cbc")

setenv("COINOR_DIR",                 "/util/opt/coin-or/1.8/gcc/9.1")
prepend_path("PATH",                "/util/opt/coin-or/1.8/gcc/9.1/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/coin-or/1.8/gcc/9.1/lib")
prepend_path("LIBRARY_PATH",   "/util/opt/coin-or/1.8/gcc/9.1/lib")
