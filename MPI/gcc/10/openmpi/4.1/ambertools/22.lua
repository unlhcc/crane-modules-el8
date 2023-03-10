help (
[[
This module loads AmberTools.
Version 22
]])

if mode() == "load" then
  LmodMessage("--------------------------------------| Help message for AmberTools module |-------------------------------------------")
  LmodMessage("This module is compiled with MPI and CUDA.")
  LmodMessage("-----------------------------------------------------------------------------------------------------------------------")
  LmodMessage("If you want to use AmberTools with MPI, please use the executables that end with `.MPI`.")
  LmodMessage("-----------------------------------------------------------------------------------------------------------------------")
  LmodMessage("If you want to use AmberTools with GPU acceleration, please additionally load the cuda module, `module load cuda/11.4`.")
  LmodMessage("Then, you can use the executables that end with `.cuda`, such as `cpptraj.cuda`, `mdgx.cuda`. `pbsa.cuda`.")
  LmodMessage("-----------------------------------------------------------------------------------------------------------------------")
end

whatis("Name: AmberTools")
whatis("Version: 22")
whatis("Category: computational chemistry, molecular dynamics")
whatis("Keywords: chemistry, suite, molecular dynamics")
whatis("URL: http://ambermd.org/AmberTools.php")

load("python/3.9")

setenv("AMBER_PREFIX", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/")
setenv("AMBERHOME", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/")
prepend_path("PATH", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/bin/")
prepend_path("LD_LIBRARY_PATH", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/lib/")
prepend_path("LIBRARY_PATH", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/lib/")
prepend_path("PYTHONPATH", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/lib/python3.9/site-packages/")
prepend_path("PERL5LIB", "/util/opt/ambertools/22/gcc/10/openmpi/4.1/lib/perl/")

family("python")
