local help_message = [[
WRF (Weather Research and Forecasting)

This module loads the WRF environment, built with the PGI
compilers.

]]

help(help_message,"\n")

whatis("Name: WRF")
whatis("Version: v4")
whatis("Category: library, runtime support")
whatis("Keywords: System, Library")
whatis("URL: http://www.wrf-model.org/index.php")

-- A priority attribute in the netcdf module prepend_path function for
-- -- the PATH variable ensures that the netcdf 'ncdump' is first in
-- -- the path instead of the hdf4 one.
-- -- See RT #7945.
load("NCL/6.6","NCO/4.9","udunits2/2.2","hdf5/1.12","hdf4/4.2","netcdf/4.7","jasper/2.0","cdo/1.9","geos/3.8","proj/7.1","libgeotiff/1.6","wgrib/1.8","grib-api/1.21","ncview/2.1","perl/5.26","binutils/2.30","expat/2.2","bzip2/1.0","libpng/1.6","cairo/1.16","freetype/2.10","automake/1.16","make")
setenv("WRFIO_NCD_LARGE_FILE_SUPPORT", "1")
setenv("LIBXEXT","/util/opt/libxext/1.3")
prepend_path("LD_LIBRARY_PATH", "/util/opt/libxext/1.3/lib")
prepend_path("LIBRARY_PATH", "/util/opt/libxext/1.3/lib")
setenv("ZLIB_PATH", tostring(os.getenv("ZLIB")))
setenv("HDF5_PATH", tostring(os.getenv("HDF5")))

family("WRF")
