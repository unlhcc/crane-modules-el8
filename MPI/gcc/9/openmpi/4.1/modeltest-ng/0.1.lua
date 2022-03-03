help(
[[
This module loads ModelTest-NG built with MPI 4.1.
Version 0.1.7
]]
)

whatis("Name: Modeltest-ng")
whatis("Version: 0.1.7")
whatis("Category: bioinformatics, alignment")
whatis("Keywords: protein, DNA, best-fit model")
whatis("URL: https://github.com/ddarriba/modeltest")
whatis("Description: ModelTest-NG is a tool for selecting the best-fit model of evolution for DNA and protein alignments.")

pushenv("CONDA_DEFAULT_ENV", "modeltest-ng-0.1.7")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/modeltest-ng/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/modeltest-ng/envs/modeltest-ng-0.1.7/bin")
