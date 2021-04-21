help(
[[
HTSlib is an implementation of a unified C library for accessing common file formats, such as SAM, CRAM and VCF, used for high-throughput sequencing data, and is the core library used by samtools and bcftools. HTSlib only depends on zlib. It is known to be compatible with intel, g++ and clang.

Version 1.12
]]
)

whatis("Name: HTSlib")
whatis("Version: 1.12.2")
whatis("Category: computational biology, genomics")
whatis("Keywords: Biology, Genomics, Quality Control, Utility, Sequencing, Genotyping, Resequencing, SNP")
whatis("URL: https://github.com/samtools/htslib")
whatis("Description: HTSlib is an implementation of a unified C library for accessing common file formats.")


prepend_path("PATH",              "/util/opt/htslib/1.12/intel/19/bin")
prepend_path("LD_LIBRARY_PATH",   "/util/opt/htslib/1.12/intel/19/lib")
prepend_path("INCLUDE",           "/util/opt/htslib/1.12/intel/19/include")
prepend_path("MANPATH",		  "/util/opt/htslib/1.12/intel/19/share/man")
setenv("HTSLIB", "/util/opt/htslib/1.12/intel/19")
