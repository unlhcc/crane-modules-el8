local help_message = [[
This module provide the default software packages for
Crane.
]]

help(help_message,"\n")

whatis("Name: Crane Default Modules")
load("compiler/gcc/10","openmpi/4.0","python/3.8","perl/5.26","git/2.30","nano/5.7")
