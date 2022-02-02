local help_message = [[
Generally Applicable Atomic-Charge Dependent London Dispersion Correction
]]

help(help_message,"\n")

whatis("Name: dftd4")
whatis("Version: 3.3.0")
whatis("Category: Physics, Mathematics")
whatis("Keywords: Physics, Mathematics")
whatis("URL: https://github.com/dftd4/dftd4")

prepend_path("PATH",                "/util/opt/dftd4/3.3/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/dftd4/3.3/intel/19/lib64")
prepend_path("LIBRARY_PATH",        "/util/opt/dftd4/3.3/intel/19/lib64")

setenv("DFTD4", "/util/opt/dftd4/3.3/intel/19")

family("dftd4")
