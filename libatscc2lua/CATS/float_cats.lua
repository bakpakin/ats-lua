--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--]]

-- ------ ------ --

-- There is alot of shared code between these prelude files.
-- They could be merged / templatized

-- Local aliases
local floor = math.floor
local ceil = math.ceil
local function identity(x) return x end
local function double2int(x) return x >= 0 and floor(x) or ceil(x) end

local function add(x, y) return x + y end
local function sub(x, y) return x - y end
local function mul(x, y) return x * y end
local function div(x, y) return x / y end

local function gt(x, y) return x > y end
local function gte(x, y) return x >= y end
local function lt(x, y) return x < y end
local function lte(x, y) return x <= y end
local function eq(x, y) return x == y end
local function neq(x, y) return x ~= y end
local function compare(x, y)
  if (x < y) then 
      return -1
  elseif (x > y) then
      return 1 
  else 
      return 0 
  end
end

ats2luapre_int2double = identity
ats2luapre_double_of_int = identity
ats2luapre_double2int = double2int
ats2luapre_int_of_double = double2int

-- ------ ------ --

function ats2luapre_neg_double(x) return -x end

-- ------ ------ --

ats2luapre_abs_double = math.abs

-- ------ ------ --

ats2luapre_add_int_double = add
ats2luapre_add_double_int = add

ats2luapre_sub_int_double = sub
ats2luapre_sub_double_int = sub

ats2luapre_mul_int_double = mul
ats2luapre_mul_double_int = mul

ats2luapre_div_int_double = div
ats2luapre_div_double_int = div

-- ------ ------ --

ats2luapre_pow_double_int1 = math.pow

-- ------ ------ --

ats2luapre_add_double_double = add
ats2luapre_sub_double_double = sub
ats2luapre_mul_double_double = mul
ats2luapre_div_double_double = div

-- ------ ------ --

ats2luapre_lt_int_double = lt
ats2luapre_lt_double_int = lt
ats2luapre_lte_int_double = lte
ats2luapre_lte_double_int = lte
ats2luapre_gt_int_double = gt
ats2luapre_gt_double_int = gt
ats2luapre_gte_int_double = gte
ats2luapre_gte_double_int = gte

ats2luapre_lt_double_double = lt
ats2luapre_lte_double_double = lte
ats2luapre_gt_double_double = gt
ats2luapre_gte_double_double = gte
ats2luapre_eq_double_double = eq
ats2luapre_neq_double_double = neq

-- ------ ------ --

ats2luapre_compare_double_double = compare

-- ------ ------ --

--[[ end of [float_cats.js] ]]--
