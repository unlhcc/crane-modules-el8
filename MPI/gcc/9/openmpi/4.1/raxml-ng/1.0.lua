help(
[[
This module loads Raxml-NG built with MPI 4.1.
Version 1.0.3
]]
)
whatis("Name: Raxml-NG")
whatis("Version: 1.0.3")
whatis("Category: Genetics, Phylogeny")
whatis("Keywords: Genetics, Phylogeny")
whatis("URL: https://github.com/amkozlov/raxml-ng")
whatis("Description: RAxML Next Generation: faster, easier-to-use and more flexible")

pushenv("CONDA_DEFAULT_ENV", "raxml-ng-1.0.3")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/raxml-ng/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/raxml-ng/envs/raxml-ng-1.0.3/bin")
