--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

local tostring = tostring
local w = io.write
local function writer(x) w(tostring(x)) end

ats2luapre_print_int = w
ats2luapre_print_uint = w
ats2luapre_print_bool = writer
ats2luapre_print_double = w
ats2luapre_print_string = w
ats2luapre_print_obj = writer
ats2luapre_print_newline = function () w('\n') end
ats2luapre_print_val = writer
