local help_message = [[
This module load ABAQUS 2021.

ABAQUS is commercial software; access is restricted to
authorized users.  Contact hcc-support@unl.edu if you are
interested in using ABAQUS.
]]

help(help_message,"\n")

whatis("Name: abaqus")
whatis("Version: 2021")
whatis("Category: Application, Engineering, FEA")
whatis("Keywords: Application, Engineering, FEA")
whatis("Description: Abaqus is a software suite for finite element analysis and computer-aided engineering.")
whatis("URL: http://www.simulia.com")

prepend_path("PATH","/util/opt/abaqus/2021/Commands")
-- setenv("TMI_CONFIG","/util/opt/abaqus/2021/SimulationServices/linux_a64/code/bin/SMAExternal/impi/etc/tmi.conf")
unsetenv("SLURM_GTIDS")
setenv("SLURM_WHOLE", "1")
setenv("SLURM_OVERLAP", "1")
