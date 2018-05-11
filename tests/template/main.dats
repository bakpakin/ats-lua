(*
//
// Template for examples with ATSCC2Lua
//
*)

(* ****** ****** *)

#define LIBATSCC2LUA_targetloc "./../../libatscc2lua"
#define ATS_EXTERN_PREFIX "ats2luapre_"
#include "{$LIBATSCC2LUA}/staloadall.hats"
#define ATS_MAINATSFLAG 1
#define ATS_DYNLOADNAME "main_dynload"

(* ****** ****** *)

val () = println!("Hello, world!")
