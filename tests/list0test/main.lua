--[[
--
-- Template for running Lua output.
--
--]]
--
package.path = package.path .. ";../../libatscc2lua/?.lua"

require "output.main_dats"

main_dynload()
