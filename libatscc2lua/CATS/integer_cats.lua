-- ------ ------ --
--
-- HX-2018-02:
-- for Lua code
-- translated from ATS
--
-- ------ ------ --
--
-- begining of
-- [integer_cats.lua]
--
-- ------ ------ --

-- ------ ------ --
--
-- HX: for signed integers
--
-- ------ ------ --

function
ats2luapre_neg_int0(x) { return ( -x ); }
function
ats2luapre_neg_int1(x) { return ( -x ); }

-- ------ ------ --

function
ats2luapre_abs_int0(x) { return Math.abs(x); }

-- ------ ------ --

function
ats2luapre_succ_int0(x) { return (x + 1); }
function
ats2luapre_pred_int0(x) { return (x - 1); }

-- ------ ------ --

function
ats2luapre_half_int0(x)
{
  return (x >= 0) ? Math.floor(x/2) : Math.ceil(x/2);
}

-- ------ ------ --

function
ats2luapre_succ_int1(x) { return (x + 1); }
function
ats2luapre_pred_int1(x) { return (x - 1); }

-- ------ ------ --

function
ats2luapre_half_int1(x) { return ats2luapre_half_int0(x); }

-- ------ ------ --

function
ats2luapre_add_int0_int0(x, y) { return (x + y); }
function
ats2luapre_sub_int0_int0(x, y) { return (x - y); }
function
ats2luapre_mul_int0_int0(x, y) { return (x * y); }
function
ats2luapre_div_int0_int0(x, y)
{ 
  var q = x / y; return (q >= 0 ? Math.floor(q) : Math.ceil(q));
}
function
ats2luapre_mod_int0_int0(x, y) { return (x % y); }
//
-- ------ ------ --

function
ats2luapre_add_int1_int1(x, y) { return (x + y); }
function
ats2luapre_sub_int1_int1(x, y) { return (x - y); }
function
ats2luapre_mul_int1_int1(x, y) { return (x * y); }
function
ats2luapre_div_int1_int1(x, y) { return ats2luapre_div_int0_int0(x, y); }
//
function
ats2luapre_mod_int1_int1(x, y) { return (x % y); }
function
ats2luapre_nmod_int1_int1(x, y) { return (x % y); }
//
-- ------ ------ --

function
ats2luapre_pow_int0_int1(x, y)
{
  var res = 1;
  while(y >= 2)
  {
    if (y%2 > 0) res *= x;
    x = x * x; y = Math.floor(y/2);
  }
  return (y > 0) ? (x * res) : res;
}

-- ------ ------ --

function
ats2luapre_asl_int0_int1(x, y) { return (x << y); }
function
ats2luapre_asr_int0_int1(x, y) { return (x >> y); }

-- ------ ------ --

function
ats2luapre_lnot_int0(x) { return (~x); }
function
ats2luapre_lor_int0_int0(x, y) { return (x | y); }
function
ats2luapre_lxor_int0_int0(x, y) { return (x ^ y); }
function
ats2luapre_land_int0_int0(x, y) { return (x & y); }

-- ------ ------ --

function
ats2luapre_lt_int0_int0(x, y) { return (x < y); }
function
ats2luapre_lte_int0_int0(x, y) { return (x <= y); }
function
ats2luapre_gt_int0_int0(x, y) { return (x > y); }
function
ats2luapre_gte_int0_int0(x, y) { return (x >= y); }
function
ats2luapre_eq_int0_int0(x, y) { return (x === y); }
function
ats2luapre_neq_int0_int0(x, y) { return (x !== y); }

-- ------ ------ --

function
ats2luapre_compare_int0_int0(x, y)
{
  if (x < y) return -1; else if (x > y) return 1; else return 0;
}

-- ------ ------ --

function
ats2luapre_lt_int1_int1(x, y) { return (x < y); }
function
ats2luapre_lte_int1_int1(x, y) { return (x <= y); }
function
ats2luapre_gt_int1_int1(x, y) { return (x > y); }
function
ats2luapre_gte_int1_int1(x, y) { return (x >= y); }
function
ats2luapre_eq_int1_int1(x, y) { return (x === y); }
function
ats2luapre_neq_int1_int1(x, y) { return (x !== y); }

-- ------ ------ --
//
function
ats2luapre_max_int0_int0(x, y) { return (x >= y) ? x : y ; }
function
ats2luapre_min_int0_int0(x, y) { return (x <= y) ? x : y ; }
//
function
ats2luapre_max_int1_int1(x, y) { return (x >= y) ? x : y ; }
function
ats2luapre_min_int1_int1(x, y) { return (x <= y) ? x : y ; }
//
-- ------ ------ --
//
// HX: for unsigned integers
//
-- ------ ------ --

function
ats2luapre_succ_uint0(x) { return (x + 1); }
function
ats2luapre_pred_uint0(x) { return (x - 1); }

-- ------ ------ --

function
ats2luapre_add_uint0_uint0(x, y) { return (x + y); }
function
ats2luapre_sub_uint0_uint0(x, y) { return (x - y); }
function
ats2luapre_mul_uint0_uint0(x, y) { return (x * y); }
function
ats2luapre_div_uint0_uint0(x, y) { return Math.floor(x/y); }
function
ats2luapre_mod_uint0_uint0(x, y) { return (x % y); }

-- ------ ------ --

function
ats2luapre_lsl_uint0_int1(x, y) { return (x << y); }
function
ats2luapre_lsr_uint0_int1(x, y) { return (x >>> y); }

-- ------ ------ --

function
ats2luapre_lnot_uint0(x) { return (~x); }
function
ats2luapre_lor_uint0_uint0(x, y) { return (x | y); }
function
ats2luapre_lxor_uint0_uint0(x, y) { return (x ^ y); }
function
ats2luapre_land_uint0_uint0(x, y) { return (x & y); }

-- ------ ------ --

function
ats2luapre_lt_uint0_uint0(x, y) { return (x < y); }
function
ats2luapre_lte_uint0_uint0(x, y) { return (x <= y); }
function
ats2luapre_gt_uint0_uint0(x, y) { return (x > y); }
function
ats2luapre_gte_uint0_uint0(x, y) { return (x >= y); }
function
ats2luapre_eq_uint0_uint0(x, y) { return (x === y); }
function
ats2luapre_neq_uint0_uint0(x, y) { return (x !== y); }

-- ------ ------ --

function
ats2luapre_compare_uint0_uint0(x, y)
{
  if (x < y) return -1; else if (x > y) return 1; else return 0;
}

-- ------ ------ --

-- end of [integer_cats.lua] --
