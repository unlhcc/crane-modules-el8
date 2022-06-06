local help_message = [[
EPOCH 4.17.16

This module loads the EPOCH environment, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: epoch")
whatis("Version: 4.17.16")
whatis("Category: Applications, Physics")
whatis("Keywords: Applications, Physics")
whatis("URL: https://github.com/Warwick-Plasma/epoch")

prepend_path("PATH", "/util/opt/epoch/4.17/intel/20/openmpi/4.0/epoch1d/bin")
prepend_path("PATH", "/util/opt/epoch/4.17/intel/20/openmpi/4.0/epoch2d/bin")
prepend_path("PATH", "/util/opt/epoch/4.17/intel/20/openmpi/4.0/epoch3d/bin")
