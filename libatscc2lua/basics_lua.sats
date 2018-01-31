(*
** For writing ATS code
** that translates into JavaScript
*)

(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define
ATS_PACKNAME
"ATSCC2LUA.basics"
#define
ATS_EXTERN_PREFIX "ats2jspre_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME/contrib/libatscc"
//
(* ****** ****** *)
//
#include "{$LIBATSCC}/basics.sats"
//
(* ****** ****** *)
(*
typedef char = int
*)
(* ****** ****** *)
//
(*
abstype LUAnumber
abstype LUAboolean
abstype LUAstring
*)
//
abstype LUAobj // generic
//
abstype LUAdate // new Date()
//
abstype LUAfilr // nominal!
//
abstype LUAregexp // new RegExp()
//
(* ****** ****** *)
//
abstype LUAarray(a:vt@ype) // [...]
abstype LUAobjmap(a:vt@ype) // {...}
//
(* ****** ****** *)
//
fun
fun2cloref0
{res:t@ype}
  (fopr: () -> res): cfun(res) = "mac#%"
fun
fun2cloref1
{a:t@ype}{res:t@ype}
  (fopr: (a) -> res): cfun(a, res) = "mac#%"
fun
fun2cloref2
{a1,a2:t@ype}{res:t@ype}
  (fopr: (a1, a2) -> res): cfun(a1, a2, res) = "mac#%"
fun
fun2cloref3
{a1,a2,a3:t@ype}{res:t@ype}
  (fopr: (a1, a2, a3) -> res): cfun(a1, a2, a3, res) = "mac#%"
//
(* ****** ****** *)

(* end of [basics_js.sats] *)
