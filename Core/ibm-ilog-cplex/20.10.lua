local help_message = [[
ibm-ilog-cplex 20.10

This module loads the IBM CPLEX Studio.

]]

help(help_message,"\n")

whatis("Name: cplex")
whatis("Version: 20.10")
whatis("Category: iIBM ILOG CPLEX Optimization Studio ")
whatis("Keywords: CPLEX, IBM Optimization Studio")
whatis("URL: https://www.ibm.com/products/ilog-cplex-optimization-studio")

prepend_path("PATH",     "/util/opt/IBM-ILOG-CPLEX/20.10/cplex/bin/x86-64_linux")
prepend_path("PATH",     "/util/opt/IBM-ILOG-CPLEX/20.10/cpoptimizer/bin/x86-64_linux")
prepend_path("PATH",     "/util/opt/IBM-ILOG-CPLEX/20.10/opl/oplide")
prepend_path("ILOG_CPLEX_PATH",     "/util/opt/IBM-ILOG-CPLEX/20.10")

-- python env containing cplex package and dependencies
pushenv("CONDA_DEFAULT_ENV", "ilog-cplex-20.10")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/ilog-cplex/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/ilog-cplex/envs/ilog-cplex-20.10/bin")

family("python")
