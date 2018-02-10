-- ------ ------ --
--
-- HX-2018-02:
-- for Lua code
-- translated from ATS
--
-- ------ ------ --

-- Local cache for functions
local floor = math.floor
local ceil = math.ceil

local function neg(x) return -x end
local function succ(x) return x + 1 end
local function pred(x) return x - 1 end
local function half(x)
  return (x >= 0) and floor(x / 2) or ceil(x / 2)
end

-- Arithmetic
local function add(x, y) return x + y end
local function sub(x, y) return x - y end
local function mul(x, y) return x * y end
local function mod(x, y) return x % y end
local function divint(x, y) 
  local q = x / y
  return q >= 0 and floor(q) or ceil(q)
end

-- Comparison
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

--
-- Signed integers
--

ats2luapre_neg_int0 = neg
ats2luapre_neg_int1 = neg

-- ------ ------ --

function
ats2luapre_abs_int0(x) return abs(x) end

-- ------ ------ --

ats2luapre_succ_int0 = succ
ats2luapre_pred_int0 = pred

-- ------ ------ --

ats2luapre_half_int0 = half

-- ------ ------ --

ats2luapre_succ_int1 = succ
ats2luapre_pred_int1 = pred

-- ------ ------ --

ats2luapre_half_int1 = half

-- ------ ------ --

ats2luapre_add_int0_int0 = add
ats2luapre_sub_int0_int0 = sub
ats2luapre_mul_int0_int0 = mul
ats2luapre_div_int0_int0 = divint
ats2luapre_mod_int0_int0 = mod
--
-- ------ ------ --

ats2luapre_add_int1_int1 = add
ats2luapre_sub_int1_int1 = sub
ats2luapre_mul_int1_int1 = mul
ats2luapre_div_int1_int1 = divint
--
ats2luapre_mod_int1_int1 = mod
ats2luapre_nmod_int1_int1 = mod
--
-- ------ ------ --

ats2luapre_pow_int0_int1 = math.pow

-- ------ ------ --

--[[
function
ats2luapre_asl_int0_int1(x, y)  return (x << y) end
function
ats2luapre_asr_int0_int1(x, y)  return (x >> y) end

-- ------ ------ --

function
ats2luapre_lnot_int0(x)  return (~x) end
function
ats2luapre_lor_int0_int0(x, y)  return (x | y) end
function
ats2luapre_lxor_int0_int0(x, y)  return (x ^ y) end
function
ats2luapre_land_int0_int0(x, y)  return (x & y) end
--]]

-- ------ ------ --

ats2luapre_lt_int0_int0 = lt
ats2luapre_lte_int0_int0 = lte
ats2luapre_gt_int0_int0 = gt
ats2luapre_gte_int0_int0 = gte
ats2luapre_eq_int0_int0 = eq
ats2luapre_neq_int0_int0 = neq

-- ------ ------ --

ats2luapre_compare_int0_int0 = compare

-- ------ ------ --

ats2luapre_lt_int1_int1 = lt
ats2luapre_lte_int1_int1 = lte
ats2luapre_gt_int1_int1 = gt
ats2luapre_gte_int1_int1 = gte
ats2luapre_eq_int1_int1 = eq
ats2luapre_neq_int1_int1 = neq

ats2luapre_compare_int1_int1 = compare

-- ------ ------ --

ats2luapre_max_int0_int0 = math.max
ats2luapre_min_int0_int0 = math.min
ats2luapre_max_int1_int1 = math.max
ats2luapre_min_int1_int1 = math.min

--
-- Unsigned Integers
--

ats2luapre_succ_uint0 = succ
ats2luapre_pred_uint0 = pred

-- ------ ------ --

ats2luapre_add_uint0_uint0 = add
ats2luapre_sub_uint0_uint0 = sub
ats2luapre_mul_uint0_uint0 = mul
function ats2luapre_div_uint0_uint0(x, y) return floor(x / y) end
ats2luapre_mod_uint0_uint0 = mod

-- ------ ------ --

--[[
function
ats2luapre_lsl_uint0_int1(x, y)  return (x << y) end
function
ats2luapre_lsr_uint0_int1(x, y)  return (x >>> y) end

-- ------ ------ --

function
ats2luapre_lnot_uint0(x)  return (~x) end
function
ats2luapre_lor_uint0_uint0(x, y)  return (x | y) end
function
ats2luapre_lxor_uint0_uint0(x, y)  return (x ^ y) end
function
ats2luapre_land_uint0_uint0(x, y)  return (x & y) end
--]]

-- ------ ------ --

ats2luapre_lt_uint0_uint0 = lt
ats2luapre_lte_uint0_uint0 = lte
ats2luapre_gt_uint0_uint0 = gt
ats2luapre_gte_uint0_uint0 = gte
ats2luapre_eq_uint0_uint0 = eq
ats2luapre_neq_uint0_uint0 = neq

-- ------ ------ --

ats2luapre_compare_uint0_uint0 = compare

-- ------ ------ --

-- end of [integer_cats.lua] --
