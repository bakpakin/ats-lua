--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-5-11:  8h:38m
--
--]]

--[[ require libats ]]
require "libatscc2lua"

local statmp0

local statmp6

function
_057_home_057_calvin_057_code_057_ats_055_lua_057_libatscc2lua_057_SATS_057_list0_056_sats__list0_sing__0__1(arg0)

--
-- knd = 0
  local tmpret1__1
  local tmp2__1
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_sing
  tmp2__1 = nil
  tmpret1__1 = {arg0, tmp2__1}
  return tmpret1__1
end -- end-of-function

-- dynloadflag_minit
local _057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_list0test_057_main_056_dats__dynloadflag = 0

function
_057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_list0test_057_main_056_dats__dynload()

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- ATSdynload()
  -- ATSdynloadflag_sta(_057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_list0test_057_main_056_dats__dynloadflag(30))
  if(ATSCKiseqz(_057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_list0test_057_main_056_dats__dynloadflag)) then
    _057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_list0test_057_main_056_dats__dynloadflag = 1 -- flag is set
    statmp0 = _057_home_057_calvin_057_code_057_ats_055_lua_057_libatscc2lua_057_SATS_057_list0_056_sats__list0_sing__0__1("Hello!")
    statmp6 = ats2luapre_ML_list0_length(statmp0)
    ats2luapre_print_int(statmp6)
    ats2luapre_print_newline()
  end -- end-of-if
  return
end -- end-of-function


function
main_dynload()

--
-- knd = 0
  local tmplab, tmplab_lua
--
  _057_home_057_calvin_057_code_057_ats_055_lua_057_tests_057_list0test_057_main_056_dats__dynload()
  return
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
