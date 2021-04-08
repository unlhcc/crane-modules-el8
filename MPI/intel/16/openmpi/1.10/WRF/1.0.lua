local help_message = [[
WRF (Weather Research and Forecasting)

This module loads the WRF environment, built with the Intel
compilers.

]]

help(help_message,"\n")

whatis("Name: WRF")
whatis("Version: WRF")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.wrf-model.org/index.php")

-- A priority attribute in the netcdf module prepend_path function for
-- -- the PATH variable ensures that the netcdf 'ncdump' is first in
-- -- the path instead of the hdf4 one.
-- -- See RT #7945.
load("compiler/intel/16","openmpi/1.10","NCL/6.3","NCO/4.4","udunits2/2.2","szip/2.1","hdf5/1.8","hdf4/4.2","netcdf/4.4")
setenv("WRFIO_NCD_LARGE_FILE_SUPPORT", "1")
setenv("JASPERINC", "/util/opt/jasper/1.900.1/intel/16/include")
setenv("JASPERLIB", "/util/opt/jasper/1.900.1/intel/16/lib")

--Cindy asked for this software RT# 4029
prepend_path("PATH",                "/util/opt/cdo/1.7/intel/16/bin")

--Cindy asked for this software RT# 4259
prepend_path("PATH",                "/util/opt/wgrib/1.8/intel/16/bin")

--Cindy asked for this software RT# 6830
prepend_path("PATH",                "/util/opt/ncview/2.1/intel/16/bin")

family("WRF")

