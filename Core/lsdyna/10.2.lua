local help_message = [[
LS-DYNA (Finite Element Analysis Software)
  Provided for and used with permission of Prof. John Reid

## This is a special dev version, only MPI version available ##

mpp971_s    = Single precision parallel (OpenMPI)
mpp971_d    = Double precision parallel (OpenMPI)

]]

help(help_message,"\n")

whatis("Name: LS-DYNA")
whatis("Version: 10.2.0")
whatis("Keywords: Application, Engineering")

load("compiler/intel/16","openmpi/1.10")

--
-- Logic to allow only certain HCC groups to use LS-DYNA
--
myUser = os.getenv("USER")
tmpfile = "/tmp/"..myUser
os.execute("/usr/bin/groups > "..tmpfile)
local file,err = io.open(tmpfile, "r")
if file==nil then
    io.stderr:write("Couldn't open file: "..err)
else
  for line in file:lines() do
    for word in line:gmatch("%w+") do
      --
      -- CHECK GROUP MEMBERSHIP
      --
      if word == "mwrsf" or word == "mech950" then
        setenv("LSTC_LICENSE", "network")
        setenv("LSTC_LICENSE_SERVER", "10.71.104.44")
      elseif word == "wittichlab" or word == "swanson" or word == "dlinzell" or word == "simlab" or word == "skimlab" or word == "steelman" or word == "huconcrete" then
        setenv("LSTC_LICENSE", "network")
        setenv("LSTC_LICENSE_SERVER", "10.71.101.135")
      elseif word == "bobaru" or word == "mnegahban" then --UNL Mechanical Engineering
        setenv("LSTC_LICENSE", "network")
        setenv("LSTC_LICENSE_SERVER", "10.138.31.208")
      elseif word == "cbbl" then
        setenv("LSTC_LICENSE", "network")
        setenv("LSTC_LICENSE_SERVER", "10.138.31.209")
      end
      -- io.stderr:write(word.."\n")
    end
  end
  os.execute("/bin/rm "..tmpfile)
end

-- setenv("LSTC_LICENSE", "network")
-- setenv("LSTC_LICENSE_SERVER", "10.71.104.44")

prepend_path("PATH","/util/opt/lsdyna/r10.2.0/intel/16/openmpi/1.10/bin")

-- workaround for Intel 16.1 PID bug
-- https://community.intel.com/t5/Intel-Fortran-Compiler/segfault-reading-from-piped-stdin-on-centos7-2/m-p/1065768#M118422
setenv("FORT0", "/dev/stderr")
setenv("FORT5", "/dev/stdin")
setenv("FORT6", "/dev/stdout")
