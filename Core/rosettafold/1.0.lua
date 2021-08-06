help(
[[
This module loads RoseTTAFold.
Version 1.0.0
]]
)
whatis("Name: RoseTTAFold")
whatis("Version: 1.0.0")
whatis("Category: bioinformatics, protein design")
whatis("Keywords: bioinformatics, protein")
whatis("URL: https://www.ipd.uw.edu/2021/07/rosettafold-accurate-protein-structure-prediction-accessible-to-all/")
whatis("Description: RoseTTAFold - Accurate prediction of protein structures and interactions using a 3-track network.")

load("anaconda")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/rosettafold/envs")
prepend_path("PATH", "/util/opt/rosettafold/1.0.0")


