local help_message = [[
LIS (Land Information Systems)

This module loads the LIS environment, built with the Intel compilers.

]]

help(help_message,"\n")

whatis("Name: LIS")
whatis("Version: 7.3")
whatis("Category: Simulation, Modeling")
whatis("Keywords: Simulation, Modeling")
whatis("URL: https://lis.gsfc.nasa.gov/")

load("openjpeg/2.4","esmf/8.2","hdf5/1.12","python/3.9","libpng/1.6","eccodes/2.24","hdf4/4.2","zlib/1.2","netcdf/4.7","lapack/3.9","intel-mkl/19")
load("hdf-eos2/2.20","libjpeg/2.0","minpack/19961126","gdal/3.4","fortrangis/2.5","libtiff/4.1","libgeotiff/1.6","curl/7.76")

-- LIS settings
setenv("LIS_ARCH","linux_ifc")
setenv("LIS_FC","mpifort")
setenv("LIS_CC","mpicc")
setenv("LIS_MODESMF",tostring(pathJoin(os.getenv("ESMF"),"mod/modO/Linux.intel.64.openmpi.default")))
setenv("LIS_LIBESMF",tostring(pathJoin(os.getenv("ESMF"),"lib/libO/Linux.intel.64.openmpi.default")))
setenv("LIS_OPENJPEG",tostring(os.getenv("OPENJPEG")))
setenv("LIS_ECCODES",tostring(os.getenv("ECCODES")))
setenv("LIS_NETCDF",tostring(os.getenv("NETCDF")))
setenv("LIS_HDF4",tostring(os.getenv("HDF4")))
setenv("LIS_HDF5",tostring(os.getenv("HDF5")))
setenv("LIS_HDFEOS",tostring(os.getenv("HDFEOS2")))
setenv("LIS_LAPACK",tostring(pathJoin(os.getenv("LAPACK"),"lib")))
setenv("LIS_MKL_LAPACK",tostring(pathJoin(os.getenv("MKLROOT"),"lib/intel/64")))
setenv("LIS_MINPACK",tostring(pathJoin(os.getenv("MINPACK"),"lib")))
-- example output from configure
setenv("LIS_CONFIG_OUT","/util/opt/LIS/7.3/lis/configure.out")

-- LVT settings
setenv("LVT_ARCH","linux_ifc")
setenv("LVT_FC","mpifort")
setenv("LVT_CC","mpicc")
setenv("LVT_MODESMF",tostring(pathJoin(os.getenv("ESMF"),"mod/modO/Linux.intel.64.openmpi.default")))
setenv("LVT_LIBESMF",tostring(pathJoin(os.getenv("ESMF"),"lib/libO/Linux.intel.64.openmpi.default")))
setenv("LVT_OPENJPEG",tostring(os.getenv("OPENJPEG")))
setenv("LVT_ECCODES",tostring(os.getenv("ECCODES")))
setenv("LVT_NETCDF",tostring(os.getenv("NETCDF")))
setenv("LVT_HDF4",tostring(os.getenv("HDF4")))
setenv("LVT_HDF5",tostring(os.getenv("HDF5")))
setenv("LVT_HDFEOS",tostring(os.getenv("HDFEOS2")))
setenv("LVT_GDAL",tostring(os.getenv("GDAL")))
setenv("LVT_FORTRANGIS",tostring(os.getenv("FORTRANGIS")))
-- example output from configure
setenv("LVT_CONFIG_OUT","/util/opt/LIS/7.3/lvt/configure.out")

-- LDT settings
setenv("LDT_ARCH","linux_ifc")
setenv("LDT_FC","mpifort")
setenv("LDT_CC","mpicc")
setenv("LDT_MODESMF",tostring(pathJoin(os.getenv("ESMF"),"mod/modO/Linux.intel.64.openmpi.default")))
setenv("LDT_LIBESMF",tostring(pathJoin(os.getenv("ESMF"),"lib/libO/Linux.intel.64.openmpi.default")))
setenv("LDT_OPENJPEG",tostring(os.getenv("OPENJPEG")))
setenv("LDT_ECCODES",tostring(os.getenv("ECCODES")))
setenv("LDT_NETCDF",tostring(os.getenv("NETCDF")))
setenv("LDT_HDF4",tostring(os.getenv("HDF4")))
setenv("LDT_HDF5",tostring(os.getenv("HDF5")))
setenv("LDT_HDFEOS",tostring(os.getenv("HDFEOS2")))
setenv("LDT_GDAL",tostring(os.getenv("GDAL")))
setenv("LDT_FORTRANGIS",tostring(os.getenv("FORTRANGIS")))
setenv("LDT_LIBGEOTIFF",tostring(os.getenv("LIBGEOTIFF")))
-- example output from configure
setenv("LDT_CONFIG_OUT","/util/opt/LIS/7.3/ldt/configure.out")

family("LIS")

if (mode() == "load") then
        LmodMessage("\tThis module loads the LIS suite (lis,lvt,ldt) build environment.")
        LmodMessage("\tUsers are expected to compile LIS themselves.")
        LmodMessage("\tFor convenience, example outputs from the configure scripts showing the proper choices are provided by the following variables:")
        LmodMessage("\t$LIS_CONFIG_OUT, $LVT_CONFIG_OUT, $LDT_CONFIG_OUT")
        LmodMessage("\tTo view, use the cat command, i.e. 'cat $LIS_CONFIG_OUT'")
end
