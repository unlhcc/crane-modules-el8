local help_message = [[
MHM2 2.0

MetaHipMer (MHM) is a de novo metagenome short-read assembler. This is version 2 (MHM2), which is written entirely in UPC++ and runs efficiently on both single servers and on multinode supercomputers, where it can scale up to coassemble terabase-sized metagenomes.
]]

help(help_message,"\n")

whatis("Name: MHM2")
whatis("Version: 2.0")
whatis("Category: Biology, Bioinformatics")
whatis("Keywords: Biology, Bioinformatics")
whatis("URL: https://bitbucket.org/berkeleylab/mhm2/src/master/")

setenv("MHM2_DIR",                 "/util/opt/mhm2/2.0/openmpi/4.0/gcc/10.2")
prepend_path("PATH",                "/util/opt/mhm2/2.0/openmpi/4.0/gcc/10.2")

prereq("upcxx/2021.3")
