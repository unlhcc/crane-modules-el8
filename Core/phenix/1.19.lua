local help_message = [[
PHENIX 1.19

This module loads the Phenix environment, built with the GCC 9.1
compilers.

]]

help(help_message,"\n")

whatis("Name: PHENIX")
whatis("Version: 1.19.2")
whatis("Category: library, runtime support")
whatis("Keywords: Applications, molecular structures")
whatis("URL: https://www.phenix-online.org/")

prepend_path("PATH","/util/opt/phenix/1.19.2/gcc/9.1/phenix-1.19.2-4158/build/bin")
setenv("PHENIX","/util/opt/phenix/1.19.2/gcc/9.1/phenix-1.19.2-4158")
setenv("PHENIX_VERSION","1.19.2-4158")
