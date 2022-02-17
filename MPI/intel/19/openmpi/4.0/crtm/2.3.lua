local help_message = [[
CRTM REL 2.3.0
]]

help(help_message,"\n")

whatis("Name: CRTM")
whatis("Version: 2.3.0")
whatis("Category: Utility, Library, Atmosphere")
whatis("Keywords: System, Library, Radiative Transfer Model")
whatis("URL: https://github.com/JCSDA/crtm")

load("netcdf/4.7")
prepend_path("PATH",                "/util/opt/crtm/2.3/intel/19/crtm_v2.3.0")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/crtm/2.3/intel/19/crtm_v2.3.0/lib")
prepend_path("INCLUDE",             "/util/opt/crtm/2.3/intel/19/crtm_v2.3.0/include")
prepend_path("LIBRARY_PATH",        "/util/opt/crtm/2.3/intel/19/crtm_v2.3.0/lib")
prepend_path("CPATH",               "/util/opt/crtm/2.3/intel/19/crtm_v2.3.0/include")
