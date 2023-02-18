help(
[[
This module loads ORCA. ORCA is an ab initio, DFT, and semi-empirical SCF-MO package.
Version 5.0.3
]]
)
whatis("Name: ORCA")
whatis("Version: 5.0.3")
whatis("Category: quantum chemistry")
whatis("Keywords: Applications, Chemistry")
whatis("URL: https://orcaforum.kofo.mpg.de/app.php/portal")
whatis("Description: ORCA is an ab initio, DFT, and semi-empirical SCF-MO package.")

prepend_path("PATH", "/util/opt/orca/5.0/openmpi/4.1/gcc/10")
prepend_path("LD_LIBRARY_PATH", "/util/opt/orca/5.0/openmpi/4.1/gcc/10")
