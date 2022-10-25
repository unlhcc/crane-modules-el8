--------------------------------------------------------------------------
-- This is a placeholder for site specific functions.
-- @module SitePackage

require("strict")


--------------------------------------------------------------------------------
-- Anything in this file will automatically be loaded everytime the Lmod command
-- is run.  Here are two suggestions on how to use your SitePackage.lua file 
--
-- a) Install Lmod normally and then overwrite your SitePackage.lua file over
--    this one in the install directory.

-- b) Create a file named "SitePackage.lua" in a different directory separate
--    from the Lmod installed directory.  Then you should modify
--    your modules.sh and modules.csh (or however you initialize the "module" command)
--    with:
--
--       (for bash, zsh, etc)
--       export LMOD_PACKAGE_PATH=/path/to/the/Site/Directory
--
--       (for csh)
--       setenv LMOD_PACKAGE_PATH /path/to/the/Site/Directory
--
--    A "SitePackage.lua" in that directory will override the one in the Lmod
--    install directory.
--
-----------------------------------------------------------------------------
-- You should check to see that Lmod finds your SitePackage.lua.  If you do:
-- 
--    $ module --config
-- 
-- and it reports:
-- 
--    Modules based on Lua: Version X.Y.Z  3016-02-05 16:31
--        by Robert McLay mclay@tacc.utexas.edu
-- 
--    Description                      Value
--    -----------                      -----
--    ...
--    Site Pkg location                standard
-- 
-- Then you haven't set things up correctly.
-----------------------------------------------------------------------------
--  Any function here that is called by a module file must be registered with
--  the sandbox.  For example you have following functions in your
--  SitePackage.lua file:
--
--      function sam()
--      end
--
--      function bill()
--      end
--
--  Then you have to add any functions defined here that you wish to call inside
--  a modulefile with the sandbox by doing:
--      sandbox_registration{ sam = sam, bill = bill}

------------------------------------------------------------------------
-- DO NOT FORGET TO USE CURLY BRACES "{}" and NOT PARENS "()"!!!!
------------------------------------------------------------------------

--  As an example suppose you want to require that users of a particular package must
--  be in a special group.  You can write this function here and use it in any
--  modulefile:
--
--
--     function module_requires_group(group)
--        local grps   = capture("groups")
--        local found  = false
--        local userId = capture("id -u")
--        local isRoot = tonumber(userId) == 0
--        for g in grps:split("[ \n]") do
--           if (g == group or isRoot)  then
--              found = true
--              break
--           end
--        end
--        return found
--     end
--
--     sandbox_registration{ ['required_group'] = module_requires_group }
--
--
--  Then in any module file you can have:
--
--
--     -------------------------
--     foo/1.0.lua:
--     -------------------------
--
--     local err_message="To use this module you must be in a particular group\n" ..
--                       "Please contact foo@my.supercomputer.center to join\n"
--
--     local found = required_group("G123456")
--
--     if (not found) then
--        LmodError(err_message)
--     end
--
--     prepend_path("PATH","/path/to/Foo/Bin")
--
--  Note that here I have used the name "required_group" in the modulefile and named the
--  function as "module_requires_group".  The key is the name used in the modulefile and
--  the right is what the function is called in SitePackage.lua.  The names can be the
--  same.

local hook   = require("Hook")

-- By using the hook.register function, this function "load_hook" is called
-- -- every time a module is loaded with the file name and the module name.

function load_hook(t)
   -- the arg t is a table:
   --     t.modFullName:  the module full name: (i.e: gcc/4.7.2)
   --     t.fn:           The file name: (i.e /apps/modulefiles/Core/gcc/4.7.2.lua)

   if (mode() ~= "load") then return end
   local user  = os.getenv("SLURM_JOB_USER") or os.getenv("USER") or "unknown"
   local jobid = os.getenv("SLURM_JOB_ID") or "unknown"
   local msg   = string.format("user=%s,module=%s,fn=%s,job=%s,cluster=crane",
                               user, t.modFullName, t.fn, jobid)
   pcall(function() os.execute("/bin/logger -t lmod -p local0.info " .. msg) end)

end

hook.register("load",load_hook)

local mapT =
{
   en_grouped = {
      ['/Compilers$'] = "Compilers",
      ['/Core$']      = "Core Modules",
      ['/Common$']    = "Core Modules",
      ['/Compiler/gcc/4.7$'] = "GCC 4.7 modules",
      ['/Compiler/gcc/4.8$'] = "GCC 4.8 modules",
      ['/Compiler/gcc/4.9$'] = "GCC 4.9 modules",
      ['/Compiler/gcc/5.1$'] = "GCC 5.1 modules",
      ['/Compiler/gcc/5.2$'] = "GCC 5.2 modules",
      ['/Compiler/gcc/5.3$'] = "GCC 5.3 modules",
      ['/Compiler/gcc/5.4$'] = "GCC 5.4 modules",
      ['/Compiler/gcc/5.5$'] = "GCC 5.5 modules",
      ['/Compiler/gcc/6.1$'] = "GCC 6.1 modules",
      ['/Compiler/gcc/6.2$'] = "GCC 6.2 modules",
      ['/Compiler/gcc/6.3$'] = "GCC 6.3 modules",
      ['/Compiler/gcc/6.4$'] = "GCC 6.4 modules",
      ['/Compiler/gcc/7.1$'] = "GCC 7.1 modules",
      ['/Compiler/gcc/7.2$'] = "GCC 7.2 modules",
      ['/Compiler/gcc/7.3$'] = "GCC 7.3 modules",
      ['/Compiler/gcc/8.2$'] = "GCC 8.2 modules",
      ['/Compiler/gcc/9.1$'] = "GCC 9.1 modules",
      ['/Compiler/gcc/9$'] = "GCC 9 modules",
      ['/Compiler/gcc/10$'] = "GCC 10 modules",
      ['/Compiler/intel/11$'] = "Intel 11 modules",
      ['/Compiler/intel/12$'] = "Intel 12 modules",
      ['/Compiler/intel/13$'] = "Intel 13 modules",
      ['/Compiler/intel/14$'] = "Intel 14 modules",
      ['/Compiler/intel/15$'] = "Intel 15 modules",
      ['/Compiler/intel/16$'] = "Intel 16 modules",
      ['/Compiler/intel/17$'] = "Intel 17 modules",
      ['/Compiler/intel/18$'] = "Intel 18 modules",
      ['/Compiler/intel/19$'] = "Intel 19 modules",
      ['/Compiler/intel/20$'] = "Intel 20 modules",
      ['/Compiler/pgi/11$'] = "PGI 11 modules",
      ['/Compiler/pgi/12$'] = "PGI 12 modules",
      ['/Compiler/pgi/13$'] = "PGI 13 modules",
      ['/Compiler/pgi/14$'] = "PGI 14 modules",
      ['/Compiler/pgi/15$'] = "PGI 15 modules",
      ['/Compiler/pgi/16$'] = "PGI 16 modules",
      ['/Compiler/pgi/17$'] = "PGI 17 modules",
      ['/Compiler/pgi/18$'] = "PGI 18 modules",
      ['/Compiler/pgi/19$'] = "PGI 19 modules",
      ['/Compiler/pgi/20$'] = "PGI 20 modules",
      ['/MPI/gcc/4.7/openmpi/1.6$'] = "GCC 4.7 + OpenMPI 1.6 modules",
      ['/MPI/gcc/4.8/openmpi/1.6$'] = "GCC 4.8 + OpenMPI 1.6 modules",
      ['/MPI/gcc/4.9/openmpi/1.6$'] = "GCC 4.9 + OpenMPI 1.6 modules",
      ['/MPI/gcc/5.1/openmpi/1.6$'] = "GCC 5.1 + OpenMPI 1.6 modules",
      ['/MPI/gcc/5.2/openmpi/1.6$'] = "GCC 5.2 + OpenMPI 1.6 modules",
      ['/MPI/gcc/5.3/openmpi/1.6$'] = "GCC 5.3 + OpenMPI 1.6 modules",
      ['/MPI/gcc/5.4/openmpi/1.6$'] = "GCC 5.4 + OpenMPI 1.6 modules",
      ['/MPI/gcc/5.5/openmpi/1.6$'] = "GCC 5.5 + OpenMPI 1.6 modules",
      ['/MPI/gcc/6.1/openmpi/1.6$'] = "GCC 6.1 + OpenMPI 1.6 modules",
      ['/MPI/gcc/6.2/openmpi/1.6$'] = "GCC 6.2 + OpenMPI 1.6 modules",
      ['/MPI/gcc/6.3/openmpi/1.6$'] = "GCC 6.3 + OpenMPI 1.6 modules",
      ['/MPI/gcc/6.4/openmpi/1.6$'] = "GCC 6.4 + OpenMPI 1.6 modules",
      ['/MPI/gcc/7.1/openmpi/1.6$'] = "GCC 7.1 + OpenMPI 1.6 modules",
      ['/MPI/gcc/7.2/openmpi/1.6$'] = "GCC 7.2 + OpenMPI 1.6 modules",
      ['/MPI/gcc/7.3/openmpi/1.6$'] = "GCC 7.3 + OpenMPI 1.6 modules",
      ['/MPI/gcc/4.7/openmpi/1.8$'] = "GCC 4.7 + OpenMPI 1.8 modules",
      ['/MPI/gcc/4.8/openmpi/1.8$'] = "GCC 4.8 + OpenMPI 1.8 modules",
      ['/MPI/gcc/4.9/openmpi/1.8$'] = "GCC 4.9 + OpenMPI 1.8 modules",
      ['/MPI/gcc/5.1/openmpi/1.8$'] = "GCC 5.1 + OpenMPI 1.8 modules",
      ['/MPI/gcc/5.2/openmpi/1.8$'] = "GCC 5.2 + OpenMPI 1.8 modules",
      ['/MPI/gcc/5.3/openmpi/1.8$'] = "GCC 5.3 + OpenMPI 1.8 modules",
      ['/MPI/gcc/5.4/openmpi/1.8$'] = "GCC 5.4 + OpenMPI 1.8 modules",
      ['/MPI/gcc/5.5/openmpi/1.8$'] = "GCC 5.5 + OpenMPI 1.8 modules",
      ['/MPI/gcc/6.1/openmpi/1.8$'] = "GCC 6.1 + OpenMPI 1.8 modules",
      ['/MPI/gcc/6.2/openmpi/1.8$'] = "GCC 6.2 + OpenMPI 1.8 modules",
      ['/MPI/gcc/6.3/openmpi/1.8$'] = "GCC 6.3 + OpenMPI 1.8 modules",
      ['/MPI/gcc/6.4/openmpi/1.8$'] = "GCC 6.4 + OpenMPI 1.8 modules",
      ['/MPI/gcc/7.1/openmpi/1.8$'] = "GCC 7.1 + OpenMPI 1.8 modules",
      ['/MPI/gcc/7.2/openmpi/1.8$'] = "GCC 7.2 + OpenMPI 1.8 modules",
      ['/MPI/gcc/7.3/openmpi/1.8$'] = "GCC 7.3 + OpenMPI 1.8 modules",
      ['/MPI/gcc/4.7/openmpi/1.10$'] = "GCC 4.7 + OpenMPI 1.10 modules",
      ['/MPI/gcc/4.8/openmpi/1.10$'] = "GCC 4.8 + OpenMPI 1.10 modules",
      ['/MPI/gcc/4.9/openmpi/1.10$'] = "GCC 4.9 + OpenMPI 1.10 modules",
      ['/MPI/gcc/5.1/openmpi/1.10$'] = "GCC 5.1 + OpenMPI 1.10 modules",
      ['/MPI/gcc/5.2/openmpi/1.10$'] = "GCC 5.2 + OpenMPI 1.10 modules",
      ['/MPI/gcc/5.3/openmpi/1.10$'] = "GCC 5.3 + OpenMPI 1.10 modules",
      ['/MPI/gcc/5.4/openmpi/1.10$'] = "GCC 5.4 + OpenMPI 1.10 modules",
      ['/MPI/gcc/5.5/openmpi/1.10$'] = "GCC 5.5 + OpenMPI 1.10 modules",
      ['/MPI/gcc/6.1/openmpi/1.10$'] = "GCC 6.1 + OpenMPI 1.10 modules",
      ['/MPI/gcc/6.2/openmpi/1.10$'] = "GCC 6.2 + OpenMPI 1.10 modules",
      ['/MPI/gcc/6.3/openmpi/1.10$'] = "GCC 6.3 + OpenMPI 1.10 modules",
      ['/MPI/gcc/6.4/openmpi/1.10$'] = "GCC 6.4 + OpenMPI 1.10 modules",
      ['/MPI/gcc/7.1/openmpi/1.10$'] = "GCC 7.1 + OpenMPI 1.10 modules",
      ['/MPI/gcc/7.2/openmpi/1.10$'] = "GCC 7.2 + OpenMPI 1.10 modules",
      ['/MPI/gcc/7.3/openmpi/1.10$'] = "GCC 7.3 + OpenMPI 1.10 modules",
      ['/MPI/gcc/4.7/openmpi/2.0$'] = "GCC 4.7 + OpenMPI 2.0 modules",
      ['/MPI/gcc/4.8/openmpi/2.0$'] = "GCC 4.8 + OpenMPI 2.0 modules",
      ['/MPI/gcc/4.9/openmpi/2.0$'] = "GCC 4.9 + OpenMPI 2.0 modules",
      ['/MPI/gcc/5.1/openmpi/2.0$'] = "GCC 5.1 + OpenMPI 2.0 modules",
      ['/MPI/gcc/5.2/openmpi/2.0$'] = "GCC 5.2 + OpenMPI 2.0 modules",
      ['/MPI/gcc/5.3/openmpi/2.0$'] = "GCC 5.3 + OpenMPI 2.0 modules",
      ['/MPI/gcc/5.4/openmpi/2.0$'] = "GCC 5.4 + OpenMPI 2.0 modules",
      ['/MPI/gcc/5.5/openmpi/2.0$'] = "GCC 5.5 + OpenMPI 2.0 modules",
      ['/MPI/gcc/6.1/openmpi/2.0$'] = "GCC 6.1 + OpenMPI 2.0 modules",
      ['/MPI/gcc/6.2/openmpi/2.0$'] = "GCC 6.2 + OpenMPI 2.0 modules",
      ['/MPI/gcc/6.3/openmpi/2.0$'] = "GCC 6.3 + OpenMPI 2.0 modules",
      ['/MPI/gcc/6.4/openmpi/2.0$'] = "GCC 6.4 + OpenMPI 2.0 modules",
      ['/MPI/gcc/7.1/openmpi/2.0$'] = "GCC 7.1 + OpenMPI 2.0 modules",
      ['/MPI/gcc/7.2/openmpi/2.0$'] = "GCC 7.2 + OpenMPI 2.0 modules",
      ['/MPI/gcc/7.3/openmpi/2.0$'] = "GCC 7.3 + OpenMPI 2.0 modules",
      ['/MPI/gcc/4.7/openmpi/2.1$'] = "GCC 4.7 + OpenMPI 2.1 modules",
      ['/MPI/gcc/4.8/openmpi/2.1$'] = "GCC 4.8 + OpenMPI 2.1 modules",
      ['/MPI/gcc/4.9/openmpi/2.1$'] = "GCC 4.9 + OpenMPI 2.1 modules",
      ['/MPI/gcc/5.1/openmpi/2.1$'] = "GCC 5.1 + OpenMPI 2.1 modules",
      ['/MPI/gcc/5.2/openmpi/2.1$'] = "GCC 5.2 + OpenMPI 2.1 modules",
      ['/MPI/gcc/5.3/openmpi/2.1$'] = "GCC 5.3 + OpenMPI 2.1 modules",
      ['/MPI/gcc/5.4/openmpi/2.1$'] = "GCC 5.4 + OpenMPI 2.1 modules",
      ['/MPI/gcc/5.5/openmpi/2.1$'] = "GCC 5.5 + OpenMPI 2.1 modules",
      ['/MPI/gcc/6.1/openmpi/2.1$'] = "GCC 6.1 + OpenMPI 2.1 modules",
      ['/MPI/gcc/6.2/openmpi/2.1$'] = "GCC 6.2 + OpenMPI 2.1 modules",
      ['/MPI/gcc/6.3/openmpi/2.1$'] = "GCC 6.3 + OpenMPI 2.1 modules",
      ['/MPI/gcc/6.4/openmpi/2.1$'] = "GCC 6.4 + OpenMPI 2.1 modules",
      ['/MPI/gcc/7.1/openmpi/2.1$'] = "GCC 7.1 + OpenMPI 2.1 modules",
      ['/MPI/gcc/7.2/openmpi/2.1$'] = "GCC 7.2 + OpenMPI 2.1 modules",
      ['/MPI/gcc/7.3/openmpi/2.1$'] = "GCC 7.3 + OpenMPI 2.1 modules",
      ['/MPI/intel/11/openmpi/1.6$'] = "Intel 11 + OpenMPI 1.6 modules",
      ['/MPI/intel/12/openmpi/1.6$'] = "Intel 12 + OpenMPI 1.6 modules",
      ['/MPI/intel/13/openmpi/1.6$'] = "Intel 13 + OpenMPI 1.6 modules",
      ['/MPI/intel/14/openmpi/1.6$'] = "Intel 14 + OpenMPI 1.6 modules",
      ['/MPI/intel/15/openmpi/1.6$'] = "Intel 15 + OpenMPI 1.6 modules",
      ['/MPI/intel/16/openmpi/1.6$'] = "Intel 16 + OpenMPI 1.6 modules",
      ['/MPI/intel/17/openmpi/1.6$'] = "Intel 17 + OpenMPI 1.6 modules",
      ['/MPI/intel/18/openmpi/1.6$'] = "Intel 18 + OpenMPI 1.6 modules",
      ['/MPI/intel/11/openmpi/1.8$'] = "Intel 11 + OpenMPI 1.8 modules",
      ['/MPI/intel/12/openmpi/1.8$'] = "Intel 12 + OpenMPI 1.8 modules",
      ['/MPI/intel/13/openmpi/1.8$'] = "Intel 13 + OpenMPI 1.8 modules",
      ['/MPI/intel/14/openmpi/1.8$'] = "Intel 14 + OpenMPI 1.8 modules",
      ['/MPI/intel/15/openmpi/1.8$'] = "Intel 15 + OpenMPI 1.8 modules",
      ['/MPI/intel/16/openmpi/1.8$'] = "Intel 16 + OpenMPI 1.8 modules",
      ['/MPI/intel/17/openmpi/1.8$'] = "Intel 17 + OpenMPI 1.8 modules",
      ['/MPI/intel/18/openmpi/1.8$'] = "Intel 18 + OpenMPI 1.8 modules",
      ['/MPI/intel/11/openmpi/1.10$'] = "Intel 11 + OpenMPI 1.10 modules",
      ['/MPI/intel/12/openmpi/1.10$'] = "Intel 12 + OpenMPI 1.10 modules",
      ['/MPI/intel/13/openmpi/1.10$'] = "Intel 13 + OpenMPI 1.10 modules",
      ['/MPI/intel/14/openmpi/1.10$'] = "Intel 14 + OpenMPI 1.10 modules",
      ['/MPI/intel/15/openmpi/1.10$'] = "Intel 15 + OpenMPI 1.10 modules",
      ['/MPI/intel/16/openmpi/1.10$'] = "Intel 16 + OpenMPI 1.10 modules",
      ['/MPI/intel/17/openmpi/1.10$'] = "Intel 17 + OpenMPI 1.10 modules",
      ['/MPI/intel/18/openmpi/1.10$'] = "Intel 18 + OpenMPI 1.10 modules",
      ['/MPI/intel/11/openmpi/2.0$'] = "Intel 11 + OpenMPI 2.0 modules",
      ['/MPI/intel/12/openmpi/2.0$'] = "Intel 12 + OpenMPI 2.0 modules",
      ['/MPI/intel/13/openmpi/2.0$'] = "Intel 13 + OpenMPI 2.0 modules",
      ['/MPI/intel/14/openmpi/2.0$'] = "Intel 14 + OpenMPI 2.0 modules",
      ['/MPI/intel/15/openmpi/2.0$'] = "Intel 15 + OpenMPI 2.0 modules",
      ['/MPI/intel/16/openmpi/2.0$'] = "Intel 16 + OpenMPI 2.0 modules",
      ['/MPI/intel/17/openmpi/2.0$'] = "Intel 17 + OpenMPI 2.0 modules",
      ['/MPI/intel/18/openmpi/2.0$'] = "Intel 18 + OpenMPI 2.0 modules",
      ['/MPI/intel/19/openmpi/2.0$'] = "Intel 19 + OpenMPI 2.0 modules",
      ['/MPI/intel/11/openmpi/2.1$'] = "Intel 11 + OpenMPI 2.1 modules",
      ['/MPI/intel/12/openmpi/2.1$'] = "Intel 12 + OpenMPI 2.1 modules",
      ['/MPI/intel/13/openmpi/2.1$'] = "Intel 13 + OpenMPI 2.1 modules",
      ['/MPI/intel/14/openmpi/2.1$'] = "Intel 14 + OpenMPI 2.1 modules",
      ['/MPI/intel/15/openmpi/2.1$'] = "Intel 15 + OpenMPI 2.1 modules",
      ['/MPI/intel/16/openmpi/2.1$'] = "Intel 16 + OpenMPI 2.1 modules",
      ['/MPI/intel/17/openmpi/2.1$'] = "Intel 17 + OpenMPI 2.1 modules",
      ['/MPI/intel/18/openmpi/2.1$'] = "Intel 18 + OpenMPI 2.1 modules",
      ['/MPI/intel/19/openmpi/2.1$'] = "Intel 19 + OpenMPI 2.1 modules",
      ['/MPI/pgi/11/openmpi/1.6$'] = "PGI 11 + OpenMPI 1.6 modules",
      ['/MPI/pgi/12/openmpi/1.6$'] = "PGI 12 + OpenMPI 1.6 modules",
      ['/MPI/pgi/13/openmpi/1.6$'] = "PGI 13 + OpenMPI 1.6 modules",
      ['/MPI/pgi/14/openmpi/1.6$'] = "PGI 14 + OpenMPI 1.6 modules",
      ['/MPI/pgi/15/openmpi/1.6$'] = "PGI 15 + OpenMPI 1.6 modules",
      ['/MPI/pgi/16/openmpi/1.6$'] = "PGI 16 + OpenMPI 1.6 modules",
      ['/MPI/pgi/17/openmpi/1.6$'] = "PGI 17 + OpenMPI 1.6 modules",
      ['/MPI/pgi/11/openmpi/1.8$'] = "PGI 11 + OpenMPI 1.8 modules",
      ['/MPI/pgi/12/openmpi/1.8$'] = "PGI 12 + OpenMPI 1.8 modules",
      ['/MPI/pgi/13/openmpi/1.8$'] = "PGI 13 + OpenMPI 1.8 modules",
      ['/MPI/pgi/14/openmpi/1.8$'] = "PGI 14 + OpenMPI 1.8 modules",
      ['/MPI/pgi/15/openmpi/1.8$'] = "PGI 15 + OpenMPI 1.8 modules",
      ['/MPI/pgi/16/openmpi/1.8$'] = "PGI 16 + OpenMPI 1.8 modules",
      ['/MPI/pgi/17/openmpi/1.8$'] = "PGI 17 + OpenMPI 1.8 modules",
      ['/MPI/pgi/11/openmpi/1.10$'] = "PGI 11 + OpenMPI 1.10 modules",
      ['/MPI/pgi/12/openmpi/1.10$'] = "PGI 12 + OpenMPI 1.10 modules",
      ['/MPI/pgi/13/openmpi/1.10$'] = "PGI 13 + OpenMPI 1.10 modules",
      ['/MPI/pgi/14/openmpi/1.10$'] = "PGI 14 + OpenMPI 1.10 modules",
      ['/MPI/pgi/15/openmpi/1.10$'] = "PGI 15 + OpenMPI 1.10 modules",
      ['/MPI/pgi/16/openmpi/1.10$'] = "PGI 16 + OpenMPI 1.10 modules",
      ['/MPI/pgi/17/openmpi/1.10$'] = "PGI 17 + OpenMPI 1.10 modules",
      ['/MPI/pgi/11/openmpi/2.0$'] = "PGI 11 + OpenMPI 2.0 modules",
      ['/MPI/pgi/12/openmpi/2.0$'] = "PGI 12 + OpenMPI 2.0 modules",
      ['/MPI/pgi/13/openmpi/2.0$'] = "PGI 13 + OpenMPI 2.0 modules",
      ['/MPI/pgi/14/openmpi/2.0$'] = "PGI 14 + OpenMPI 2.0 modules",
      ['/MPI/pgi/15/openmpi/2.0$'] = "PGI 15 + OpenMPI 2.0 modules",
      ['/MPI/pgi/16/openmpi/2.0$'] = "PGI 16 + OpenMPI 2.0 modules",
      ['/MPI/pgi/17/openmpi/2.0$'] = "PGI 17 + OpenMPI 2.0 modules",
      ['/MPI/pgi/11/openmpi/2.1$'] = "PGI 11 + OpenMPI 2.1 modules",
      ['/MPI/pgi/12/openmpi/2.1$'] = "PGI 12 + OpenMPI 2.1 modules",
      ['/MPI/pgi/13/openmpi/2.1$'] = "PGI 13 + OpenMPI 2.1 modules",
      ['/MPI/pgi/14/openmpi/2.1$'] = "PGI 14 + OpenMPI 2.1 modules",
      ['/MPI/pgi/15/openmpi/2.1$'] = "PGI 15 + OpenMPI 2.1 modules",
      ['/MPI/pgi/16/openmpi/2.1$'] = "PGI 16 + OpenMPI 2.1 modules",
      ['/MPI/pgi/17/openmpi/2.1$'] = "PGI 17 + OpenMPI 2.1 modules",
      ['/MPI/pgi/18/openmpi/4.0$'] = "PGI 18 + OpenMPI 4.0 modules",
      ['/MPI/pgi/20/openmpi/4.0$'] = "PGI 20 + OpenMPI 4.0 modules",
      ['/MPI/gcc/9/openmpi/4.0$'] = "GCC 9 + OpenMPI 4.0 modules",
      ['/MPI/gcc/10/openmpi/4.0$'] = "GCC 10 + OpenMPI 4.0 modules",
      ['/MPI/gcc/9/openmpi/4.1$'] = "GCC 9 + OpenMPI 4.1 modules",
      ['/MPI/gcc/10/openmpi/4.1$'] = "GCC 10 + OpenMPI 4.1 modules",
      ['/MPI/intel/19/openmpi/4.0$'] = "Intel 19 + OpenMPI 4.0 modules",
      ['/MPI/intel/20/openmpi/4.0$'] = "Intel 20 + OpenMPI 4.0 modules",
      ['/MPI/pgi/19/openmpi/4.0$'] = "PGI 19 + OpenMPI 4.0 modules",
   },
 }

function avail_hook(t)
   local availStyle = masterTbl().availStyle
   local styleT     = mapT[availStyle]
   if (not availStyle or availStyle == "system" or styleT == nil) then
      return
   end

   for k,v in pairs(t) do
      for pat,label in pairs(styleT) do
         if (k:find(pat)) then
            t[k] = label
            break
         end
      end
   end
end


hook.register("avail",avail_hook)
