local help_message = [[
This module load ANSYS 2021R2.

ANSYS is commercial software; access is restricted to
authorized users.  Contact hcc-support@unl.edu if you are
interested in using ANSYS.
]]

help(help_message,"\n")

whatis("Name: ansys")
whatis("Version: 2021R2")
whatis("Category: Application, Engineering, FEA")
whatis("Keywords: Application, Engineering, FEA")
whatis("Description: ANSYS offers a comprehensive software suite that spans the entire range of physics, providing access to virtually any field of engineering s
imulation that a design process requires.")
whatis("URL: https://www.ansys.com")

prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/Framework/bin/Linux64")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/fluent/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/ansys/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/CFX/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/aisol/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/shared_files/licensing/lic_admin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/TurboGrid/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/aisol/bin/linx64")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/aisol/CommonFiles/linx64")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/icemcfd/linux64_amd/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/ACP")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/Icepak/bin")
prepend_path("PATH",  "/util/opt/ansys/2021R2/v212/autodyn/bin")

local work=os.getenv("WORK") or "/tmp"
setenv("TEMP",  pathJoin(work,".ansys"))

setenv("SLURM_WHOLE","1")
setenv("SLURM_OVERLAP","1")
setenv("FLUENT_AFFINITY","0")
setenv("SLURM_ENABLED","1")
setenv("SCHEDULER_TIGHT_COUPLING","1")
setenv("USE_INTEL_MPI_2019","1")
setenv("SSH_SPAWN","0")

-- HCC helper script 'hcc_ansys'
prepend_path("PATH",  "/util/opt/ansys/Commands")
