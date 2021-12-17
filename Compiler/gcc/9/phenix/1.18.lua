local help_message = [[
PHENIX 1.18

This module loads the Phenix environment, built with the GCC 9.1
compilers.

]]

help(help_message,"\n")

whatis("Name: PHENIX")
whatis("Version: 1.18.2")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, molecular structures")
whatis("URL: https://www.phenix-online.org/")

prepend_path("PATH","/util/opt/phenix/1.18.2/phenix-1.18.2-3874/build/bin")
setenv("PHENIX","/util/opt/phenix/1.18.2/phenix-1.18.2-3874")
setenv("PHENIX_VERSION","1.18.2-3874")
