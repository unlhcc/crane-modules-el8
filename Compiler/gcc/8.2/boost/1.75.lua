help([[
The boost module file defines the following environment variables:"
BOOST_DIR for the location of the boost distribution.
BOOST_INCLUDE for the location of the boost include files.
LIBRARY_PATH for the location of the boost libraries.
LD_LIBRARY_PATH for the location of the boost libraries."

Version 1.75"
]])

whatis("Name: boost")
whatis("Version: 1.75")
whatis("Category: System Environment/Base")
whatis("Keywords: System, Library, C++")
whatis("URL: http://www.boost.org")
whatis("Description: Boost provides free peer-reviewed portable C++ source libraries.")

setenv("BOOST_DIR",	    "/util/opt/boost/1.75/gcc/8.2")
setenv("Boost_DIR",	    "/util/opt/boost/1.75/gcc/8.2")
setenv("BOOST_INCLUDE",     "/util/opt/boost/1.75/gcc/8.2/include")

-- Add boost to the LD_LIBRARY_PATH, LIBRARY_PATH
prepend_path("LD_LIBRARY_PATH",   "/util/opt/boost/1.75/gcc/8.2/lib")
prepend_path("LIBRARY_PATH",      "/util/opt/boost/1.75/gcc/8.2/lib")
prepend_path("CPATH",      "/util/opt/boost/1.75/gcc/8.2/include")
