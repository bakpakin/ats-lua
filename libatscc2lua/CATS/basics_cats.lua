--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

-- ------ ------ --

local error = error

the_atsptr_null = 0

local function eq(x, y) return x == y end

function ATSCKiseqz(x) return x == 0 end
function ATSCKisneqz(x) return x ~= 0 end

function ATSCKptrisnull(xs) return xs == nil end
function ATSCKptriscons(xs) return xs ~= nil end

-- ------ ------ --

ATSCKpat_int = eq
ATSCKpat_bool = eq
ATSCKpat_char = eq
ATSCKpat_float = eq
ATSCKpat_string = eq

-- ------ ------ --

ATSCKpat_con0 = eq -- function ATSCKpat_con0 (con, tag) return (con == tag) end
function ATSCKpat_con1 (con, tag) return (con[0] == tag) end

-- ------ ------ --

function ATSINScaseof_fail(errmsg)
  error("ATSINScaseof_fail:" .. errmsg)
end

function ATSINSdeadcode_fail()
   error("ATSINSdeadcode_fail")
end

-- ------ ------ --

function ATSPMVempty() end

-- ------ ------ --

function ATSPMVlazyval(thunk)
   return {0, thunk}
end

-- ------ ------ --

function ATSPMVlazyval_eval(lazyval)
    local mythunk
    local flag = lazyval[0]
    if (flag == 0) then
        lazyval[0] = 1
        mythunk = lazyval[1]
        lazyval[1] = mythunk[0](mythunk)
    else
        lazyval[0] = flag + 1
    end
  return lazyval[1]
end

-- ------ ------ --

function ATSPMVllazyval(thunk) return thunk end

-- ------ ------ --

function ATSPMVllazyval_eval(llazyval)
   return llazyval[0](llazyval, true)
end

function atspre_lazy_vt_free(llazyval)
   return llazyval[0](llazyval, false)
end

-- ------ ------ --

ats2luapre_type = type

ats2luapre_tostring = tostring
ats2luapre_toString = tostring

function ats2luapre_lazy2cloref(lazyval) return lazyval[1] end

function ats2luapre_ListSubscriptExn_throw()
  error("ListSubscriptionExn")
end

function ats2luapre_ArraySubscriptExn_throw()
  error("ArraySubscriptionExn")
end

function ats2luapre_StreamSubscriptExn_throw()
  error("StreamSubscriptionExn")
end

function ats2luapre_assert_bool0(tfv) if not tfv then error("Assert") end end
function ats2luapre_assert_bool1(tfv) if not tfv then error("Assert") end end

function ats2luapre_assert_errmsg_bool0 (tfv, errmsg)
    if not tfv then error(errmsg) end
end

function ats2luapre_assert_errmsg_bool1(tfv, errmsg)
    if not tfv then error(errmsg) return end
end

--[[
//
/* ****** ****** */
//
/*
//
// HX-2015-10-25:
// Commenting out
// implementation in basics.dats
//
*/
function
ats2luapre_cloref0_app(cf)  return cf[0](cf) end
function
ats2luapre_cloref1_app(cf, x)  return cf[0](cf, x) end
function
ats2luapre_cloref2_app(cf, x1, x2)  return cf[0](cf, x1, x2) end
function
ats2luapre_cloref3_app(cf, x1, x2, x3)  return cf[0](cf, x1, x2, x3) end
//
/* ****** ****** */
--]]

-- ------ ------ --

function ats2luapre_cloref2fun0(cf)
  return function() return ats2luapre_cloref0_app(cf) end
end

function ats2luapre_cloref2fun1(cf)
  return function(x) return ats2luapre_cloref1_app(cf,x) end
end

function ats2luapre_cloref2fun2(cf)
  return function(x1,x2) return ats2luapre_cloref2_app(cf,x1,x2) end
end

function ats2luapre_cloref2fun3(cf)
  return function(x1,x2,x3) return ats2luapre_cloref2_app(cf,x1,x2,x3) end
end

-- ------ ------ --

--ats2luapre_print = print

--[[ end of [basics_cats.lua] ]]--
