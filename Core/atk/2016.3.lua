local help_message = [[
ATK 2016.3

This module loads the ATK environment, prebuilt with MPICH2

]]

help(help_message,"\n")

whatis("Name: ATK")
whatis("Version: 2016.3")
whatis("Category: Application, Chemistry")
whatis("Keywords: Application, Chemistry")
whatis("URL: http://www.quantumwise.com/")

setenv("QUANTUM_LICENSE_PATH", "6200@dmol4b.unl.edu")
setenv("LMX_LICENSE_PATH", "6200@dmol4b.unl.edu")

-- https://hcc.freshdesk.com/a/tickets/33277
-- setenv("QUANTUM_LICENSE_PATH", "6200@10.64.88.184")
-- setenv("LMX_LICENSE_PATH", "6200@10.64.88.184")


prepend_path("PATH","/util/opt/atk/2016.3/VNL-ATK-2016.3/bin")
prepend_path("PATH","/util/opt/atk/2016.3/VNL-ATK-2016.3/license")

-- Workaround for RHEL 6.5 upgrade
-- See http://quantumwise.com/forum/index.php?topic=2564.15#.U-zVMlb9O0s
-- setenv("LD_PRELOAD",	"libstdc++.so.6")

family("atk")
