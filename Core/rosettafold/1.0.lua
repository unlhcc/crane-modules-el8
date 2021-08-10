help(
[[
This module loads RoseTTAFold.
Version 1.0.0
]]
)
if mode() == "load" then
  LmodMessage("-------------------------| Usage of RoseTTAFold |--------------------------------")
  LmodMessage("After loading the module, create a copy of the network and weights directories")
  LmodMessage("in your work directory.")
  LmodMessage("This only needs to be done once the first time the module is loaded.")
  LmodMessage("")
  LmodMessage("cp -r ${ROSETTAFOLD_NETWORK:-none} $WORK/")
  LmodMessage("cp -r ${ROSETTAFOLD_WEIGHTS:-none} $WORK/")
  LmodMessage("")
  LmodMessage("Usage: run_[pyrosetta, e2e]_ver.sh <input_fasta_file> <output_dir>")
  LmodMessage("---------------------------------------------------------------------------------")
end

whatis("Name: RoseTTAFold")
whatis("Version: 1.0.0")
whatis("Category: bioinformatics, protein design")
whatis("Keywords: bioinformatics, protein")
whatis("URL: https://www.ipd.uw.edu/2021/07/rosettafold-accurate-protein-structure-prediction-accessible-to-all/")
whatis("Description: RoseTTAFold - Accurate prediction of protein structures and interactions using a 3-track network.")

load("anaconda")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/rosettafold/envs")
prepend_path("PATH", "/util/opt/rosettafold/1.0.0")
setenv("ROSETTAFOLD_NETWORK","/util/opt/rosettafold/1.0.0/network")
setenv("ROSETTAFOLD_WEIGHTS","/util/opt/rosettafold/1.0.0/weights")

