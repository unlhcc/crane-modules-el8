help([[NWChem 7.0.2

This module loads the nwchem environment, built with the intel-20 and openmp-4.0
compilers. Please copy .nwchemrc to your $HOME using the command "cp $NWCHEMRC $HOME"
before running nwchem.

]], [[
]])
whatis("Name: NWChem")
whatis("Version: 7.0.2")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, Chemistry")
whatis("URL: http://www.nwchem-sw.org/index.php/Main_Page")
setenv("NWCHEMRC", "/util/opt/nwchem/7.0/intel/20/openmpi/4.0/bin/LINUX64/.nwchemrc")
prepend_path("PATH","/util/opt/nwchem/7.0/intel/20/openmpi/4.0/bin/LINUX64/")
prepend_path("LIBRARY_PATH",        "/util/opt/nwchem/7.0/intel/20/openmpi/4.0/lib/LINUX64/")
family("nwchem")
