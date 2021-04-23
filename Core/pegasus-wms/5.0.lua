help (
[[
This module loads Pegasus WMS
Version 5.0
]])

whatis("Name: Pegasus WMS")
whatis("Version: 5.0")
whatis("Category: workflow management system")
whatis("Keywords: workflow management system, HPC, HTC")
whatis("Description: Pegasus Workflow Management System")
whatis("URL: https://github.com/pegasus-isi/pegasus")

load("java/12","git/2.29","python/3.8")
prepend_path("PATH","/util/opt/pegasus-wms/5.0/bin")
