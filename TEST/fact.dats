(* ****** ****** *)
//
// HX-2018-02:
// A running example
// from ATS2 to Lua
//
(* ****** ****** *)
//
#define
LIBATSCC2LUA_targetloc
  "./../libatscc2lua"
//
(* ****** ****** *)
//
#include
"{$LIBATSCC2LUA}/mylibies.hats"
//
(* ****** ****** *)
//
#define
ATS_MAINATSFLAG 1
#define
ATS_DYNLOADNAME "fact_dynload"
//
(* ****** ****** *)
//
extern
fun fact : int -> int = "mac#fact"
//
implement
fact (n) = if n > 0 then n * fact(n-1) else 1
//
(* ****** ****** *)
//
val N = 10
val () = println! ("fact(", N, ") = ", fact(N))
//
(* ****** ****** *)

(* end of [fact.dats] *)
