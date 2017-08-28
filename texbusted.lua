-- this is wrapper for busted, which can be called with texlua
-- busted itself doesn't support Lua modules available with kpse
-- library
--
local busted = require "busted.runner" ({standalone=false})

