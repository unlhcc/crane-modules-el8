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
-- workaround for Intel 16.1 PID bug
-- https://community.intel.com/t5/Intel-Fortran-Compiler/segfault-reading-from-piped-stdin-on-centos7-2/m-p/1065768#M118422
setenv("FORT0", "/dev/stderr")
setenv("FORT5", "/dev/stdin")
setenv("FORT6", "/dev/stdout")

-- external libfabric so PSM/PSM2 is used
prepend_path("PATH","/util/opt/libfabric/1.11/gcc/8.3/bin")
prepend_path("LD_LIBRARY_PATH","/util/opt/libfabric/1.11/gcc/8.3/lib")
setenv("I_MPI_FABRICS",         "shm:ofi")
setenv("I_MPI_OFI_LIBRARY_INTERNAL", "0")
