help(
[[
This module loads svSolver.
Version 2022.07.20
]]
)
whatis("Name: svSolver")
whatis("Version: 2022.07.20")
whatis("Category: Biology, Simulation")
whatis("Keywords: Biology, Simulation ")
whatis("URL: https://simtk.org/projects/simvascular/")
whatis("Description: The svSolver includes three executable programs: Presolver(svpre), Flowsolver(svsolver), Postsolver(svpost).")

pushenv("CONDA_DEFAULT_ENV", "svsolver-2022.07.20")
append_path("CONDA_ENVS_PATH", "/util/opt/anaconda/deployed-conda-envs/packages/svsolver/envs")
prepend_path("PATH", "/util/opt/anaconda/deployed-conda-envs/packages/svsolver/envs/svsolver-2022.07.20/bin")
