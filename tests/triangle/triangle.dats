
(* ATS -> Lua boilerplate *)
#define LIBATSCC2LUA_targetloc "./../../libatscc2lua"
#define ATS_EXTERN_PREFIX "ats2luapre_"
#include "{$LIBATSCC2LUA}/staloadall.hats"
#define ATS_MAINATSFLAG 1
#define ATS_DYNLOADNAME "triangle_dynload"

extern fun isTriangle(x: int, y: int, z: int): bool
extern fun fib_trec(n: int): int

(* ****** ****** *)

implement
isTriangle(x, y, z) =
  (x + y > z) &&
  (x + z > y) &&
  (y + z > x)

(* ****** ****** *)

val fib_help =
fix f(n: int, a: int, b: int): int =>
    if n < 2 then a else f(n - 1, a + b, a)

implement fib_trec(n) = fib_help(n, 1, 0)

val () = assertloc(isTriangle(3,4,5))
val () = assertloc(isTriangle(5,4,3))
val () = assertloc(~isTriangle(1,2,3))
val () = assertloc(~isTriangle(3,2,1))
val () = println! ("Testing of [isTriangle] is done successfully!")

val fib = fix f(n: int): int =>
  if n >= 2 then f(n-1)+f(n-2) else n

val () = assertloc(fib(5) = fib_trec(5))
val () = assertloc(fib(10) = fib_trec(10))
val () = assertloc(fib(20) = fib_trec(20))
val () = println! ("fib_trec(5) = ", fib_trec(5))
val () = println! ("fib_trec(10) = ", fib_trec(10))
val () = println! ("fib_trec(20) = ", fib_trec(20))
val () = println! ("Testing of [fib_trec] is done successfully!")
