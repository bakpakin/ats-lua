--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-9-5: 20h:19m
--
--]]

--[[ require libats ]]
require "libatscc2lua"

local statmp8

function
fact(arg0)

--
-- knd = 0
  local tmpret0
  local tmp1
  local tmp2
  local tmp3
  local tmplab, tmplab_lua
--
  -- __patsflab_fact
  tmp1 = ats2luapre_gt_int0_int0(arg0, 0)
  if(tmp1) then
    tmp3 = ats2luapre_sub_int0_int0(arg0, 1)
    tmp2 = fact(tmp3)
    tmpret0 = ats2luapre_mul_int0_int0(arg0, tmp2)
  else
    tmpret0 = 1
  end -- end-of-if
  return tmpret0
end -- end-of-function

-- dynloadflag_minit
local _057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_fact_057_fact_056_dats__dynloadflag = 0

function
_057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_fact_057_fact_056_dats__dynload()

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- ATSdynload()
  -- ATSdynloadflag_sta(_057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_fact_057_fact_056_dats__dynloadflag(29))
  if(ATSCKiseqz(_057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_fact_057_fact_056_dats__dynloadflag)) then
    _057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_fact_057_fact_056_dats__dynloadflag = 1 -- flag is set
    ats2luapre_print_string("fact(")
    ats2luapre_print_int(10)
    ats2luapre_print_string(") = ")
    statmp8 = fact(10)
    ats2luapre_print_int(statmp8)
    ats2luapre_print_newline()
  end -- end-of-if
  return
end -- end-of-function


function
fact_dynload()

--
-- knd = 0
  local tmplab, tmplab_lua
--
  _057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_fact_057_fact_056_dats__dynload()
  return
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
