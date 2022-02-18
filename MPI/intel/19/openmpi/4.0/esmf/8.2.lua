local help_message = [[
ESMF 8.2.0
]]

help(help_message,"\n")

whatis("Name: ESMF")
whatis("Version: 8.2.0")
whatis("Category: Utility, Framework")
whatis("Keywords: Earth, System, Modeling")
whatis("URL: https://earthsystemmodeling.org/")

load("netcdf/4.7")
prepend_path("PATH",                "/util/opt/esmf/8.2/intel/19/apps/appsO/Linux.intel.64.openmpi.default/")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/esmf/8.2/intel/19/lib/libO/Linux.intel.64.openmpi.default")
prepend_path("LIBRARY_PATH",     "/util/opt/esmf/8.2/intel/19/lib/libO/Linux.intel.64.openmpi.default")
setenv("ESMF", "/util/opt/esmf/8.2/intel/19")
