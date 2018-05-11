(*
//
// This example implements a custom, non dependently typed
// list datastructure and operations on that structure.
// It also implements permutation on that data structure.
//
*)

(* ****** ****** *)

#define LIBATSCC2LUA_targetloc "./../../libatscc2lua"
#define ATS_EXTERN_PREFIX "ats2luapre_"
#include "{$LIBATSCC2LUA}/staloadall.hats"
#define ATS_MAINATSFLAG 1
#define ATS_DYNLOADNAME "main_dynload"

(* ****** ****** *)

datatype
mylist(a:t@ype) =
| mylist_nil of ()
| mylist_cons of (a, mylist(a))
| mylist_snoc of (mylist(a), a)
| mylist_append of (mylist(a), mylist(a))
| mylist_reverse of (mylist(a))

(* ****** ****** *)

exception
MylistSubscriptExn of ()

extern fun {a:t@ype}
mylist2list0(xs: mylist(a)): list0(a)

extern fun {a:t@ype}
mylist_get_at(xs: mylist(a), i: int): a

(* ****** ****** *)

exception LastPermExn of ()

extern fun
next_permutation(xs: list0(int)): option0(list0(int))

(* ****** ****** *)

implement {a} mylist2list0(xs) = let
  fun aux(xs: mylist(a)): list0(a) = (
    case+ xs of
    | mylist_nil() => list0_nil()
    | mylist_cons(x, xs) => list0_cons(x, aux(xs))
    | mylist_snoc(xs, x) => list0_extend(aux(xs), x)
    | mylist_append(xs, ys) => list0_append(aux(xs), aux(ys))
    | mylist_reverse(xs) => list0_reverse(aux(xs))
  )
in
  aux(xs)
end

(* ****** ****** *)

fun {a:t@ype} mylist_length
(xs: mylist(a)): int =
case+ xs of
| mylist_nil() => 0
| mylist_cons(_, more) => mylist_length(more) + 1
| mylist_snoc(more, _) => mylist_length(more) + 1
| mylist_append(left, right) => mylist_length(left) + mylist_length(right)
| mylist_reverse(more) => mylist_length(more)

(* ****** ****** *)

implement {a:t@ype} mylist_get_at
(xs: mylist(a), i: int): a =
if i < 0
    then $raise(MylistSubscriptExn())
    else (case+ xs of
        | mylist_nil() => $raise(MylistSubscriptExn())
        | mylist_cons(x, more) => if i = 0 then x else mylist_get_at(more, i - 1)
        | mylist_snoc(more, x) => if mylist_length(more) = i then x else mylist_get_at(more, i)
        | mylist_append(axs, ays) => (let
            val xlen = mylist_length(axs)
        in
            if xlen > i then mylist_get_at(axs, i) else mylist_get_at(ays, i - xlen)
        end)
        | mylist_reverse(more) => mylist_get_at(more, mylist_length(more) - i - 1))

(* ****** ****** *)
