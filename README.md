# Atscc2lua #

Atscc2lua is for transpiling into Lua the C output generated from
compiling ATS source. With atscc2lua, one can make direct use of a
rich set of programming features supported by ATS in the construction
of Lua code. In particular, one can readily practice a style of
co-programming with ATS and Lua by taking advantage of both languages.

Suppose that foo.dats is a file containing a program written in
ATS. We can use patscc to compile foo.dats into foo_dats.c (which
contains code written in a small subset of C) and then use atscc2lua
to transpile foo_dats.c into foo_dats.lua that contains Lua code
corresponding to the ATS program in foo.dats.

## atscc2lua

See WALKTHROUGH.md for more information on getting started with atscc2lua.
