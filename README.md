# Atscc2lua #

Atscc2lua is for transpiling into Lua the C output generated
from compiling ATS source.

Suppose that foo.dats is a file containing a program written in
ATS. We can use patscc to compile foo.dats into foo_dats.c (which
contains some C code) and then use atscc2lua to transpile foo_dats.c
into foo_dats.lua that contains Lua code corresponding to the ATS
program in foo.dats.


