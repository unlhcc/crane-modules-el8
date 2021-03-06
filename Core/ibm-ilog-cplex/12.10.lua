local help_message = [[
ibm-ilog-cplex 12.10

This module loads the ibm-ILOG-CPLEX toolbox for Matlab.

]]

help(help_message,"\n")

whatis("Name: cplex")
whatis("Version: 12.10")
whatis("Category: iIBM ILOG CPLEX Optimization Studio ")
whatis("Keywords: CPLEX, IBM Optimization Studio")
whatis("URL: https://www.ibm.com/products/ilog-cplex-optimization-studio")

prepend_path("PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/cplex/bin/x86-64_linux")
prepend_path("PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/cpoptimizer/bin/x86-64_linux")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/cplex/bin/x86-64_linux")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/cpoptimizer/bin/x86-64_linux")
prepend_path("PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/opl/oplide")
prepend_path("LD_LIBRARY_PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/cplex/lib/x86-64_linux/static_pic")
prepend_path("INCLUDE",             "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/cplex/include/ilcplex/")
prepend_path("ILOG_CPLEX_PATH",     "/util/opt/IBM-ILOG-CPLEX/12.10/intel/19.0.1/")

-- python env containing cplex package and dependencies
pushenv("CONDA_DEFAULT_ENV", "ilog-cplex-12.10")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/ilog-cplex/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/ilog-cplex/envs/ilog-cplex-12.10/bin")

family("python")
