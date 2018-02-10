--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

-- ------ ------ --

local function bool2int(x) return x and 1 or 0 end
local function int2bool(x) return x ~= 0 end
local function neg(x) return not x end
local function add(x, y) return x or y end
local function mul(x, y) return x and y end

ats2luapre_bool2int0 = bool2int
ats2luapre_bool2int1 = bool2int

-- ------ ------ --

ats2luapre_int2bool0 = int2bool
ats2luapre_int2bool1 = int2bool

-- ------ ------ --

ats2luapre_neg_bool0 = neg
ats2luapre_neg_bool1 = neg

-- ------ ------ --

ats2luapre_add_bool0_bool0 = add
ats2luapre_add_bool0_bool1 = add
ats2luapre_add_bool1_bool0 = add
ats2luapre_add_bool1_bool1 = add

-- ------ ------ --

ats2luapre_mul_bool0_bool0 = mul
ats2luapre_mul_bool0_bool1 = mul
ats2luapre_mul_bool1_bool0 = mul
ats2luapre_mul_bool1_bool1 = mul

-- ------ ------ --

ats2luapre_eq_bool0_bool0 = eq
ats2luapre_neq_bool0_bool0 = neq
ats2luapre_eq_bool1_bool1 = eq
ats2luapre_neq_bool1_bool1 = neq

ats2luapre_int2bool0 = int2bool
ats2luapre_int2bool1 = int2bool

-- ------ ------ --

ats2luapre_bool2int0 = bool2int
ats2luapre_bool2int1 = bool2int

-- ------ ------ --

--[[ end of [bool_cats.js] ]]--
