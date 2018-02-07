######
#
# For generating libatscc2lua
#
######

PATSOPT=$(PATSHOME)/bin/patsopt
ATSCC2LUA=$(PATSHOME)/bin/atscc2lua

######

CAT=cat
CPF=cp -f
RMF=rm -f
SCPR=scp -r

######

all::
all_in_one::

######
#
all:: ; \
$(PATSOPT) -d ./DATS/basics.dats | \
$(ATSCC2LUA) -o ./output/DATS/basics_dats.lua -i
#
all:: ; \
$(PATSOPT) -d ./DATS/char.dats | \
$(ATSCC2LUA) -o ./output/DATS/char_dats.lua -i
#
all:: ; \
$(PATSOPT) -d ./DATS/string.dats | \
$(ATSCC2LUA) -o ./output/DATS/string_dats.lua -i
#
all:: ; \
$(PATSOPT) -d ./DATS/list.dats | \
$(ATSCC2LUA) -o ./output/DATS/list_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/list_vt.dats | \
$(ATSCC2LUA) -o ./output/DATS/list_vt_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/option.dats | \
$(ATSCC2LUA) -o ./output/DATS/option_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/stream.dats | \
$(ATSCC2LUA) -o ./output/DATS/stream_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/stream_vt.dats | \
$(ATSCC2LUA) -o ./output/DATS/stream_vt_dats.lua -i
#
all:: ; \
$(PATSOPT) -d ./DATS/gvalue.dats | \
$(ATSCC2LUA) -o ./output/DATS/gvalue_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/intrange.dats | \
$(ATSCC2LUA) -o ./output/DATS/intrange_dats.lua -i
#
######
#
all:: ; \
$(PATSOPT) -d ./DATS/LUAarray.dats | \
$(ATSCC2LUA) -o ./output/DATS/LUAarray_dats.lua -i
#
######
#
all:: ; \
$(PATSOPT) -d ./DATS/reference.dats | \
$(ATSCC2LUA) -o ./output/DATS/reference_dats.lua -i
#
all:: ; \
$(PATSOPT) -d ./DATS/arrayref.dats | \
$(ATSCC2LUA) -o ./output/DATS/arrayref_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/matrixref.dats | \
$(ATSCC2LUA) -o ./output/DATS/matrixref_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/gmatrixref.dats | \
$(ATSCC2LUA) -o ./output/DATS/gmatrixref_dats.lua -i
#
######
#
all:: ; \
$(PATSOPT) -d ./DATS/funarray.dats | \
$(ATSCC2LUA) -o ./output/DATS/funarray_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/slistref.dats | \
$(ATSCC2LUA) -o ./output/DATS/slistref_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/qlistref.dats | \
$(ATSCC2LUA) -o ./output/DATS/qlistref_dats.lua -i
#
######
#
all:: ; \
$(PATSOPT) -d ./DATS/ML/list0.dats | \
$(ATSCC2LUA) -o ./output/DATS/ML/list0_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/ML/array0.dats | \
$(ATSCC2LUA) -o ./output/DATS/ML/array0_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/ML/matrix0.dats | \
$(ATSCC2LUA) -o ./output/DATS/ML/matrix0_dats.lua -i
all:: ; \
$(PATSOPT) -d ./DATS/ML/option0.dats | \
$(ATSCC2LUA) -o ./output/DATS/ML/option0_dats.lua -i
#
######
#
LIBATSCC2LUA_ALL_LUA=\
output/libatscc2lua_all.lua
#
######

all_in_one:: libatscc2lua_all

######
#
DATE=/bin/date
ECHO=/bin/echo -en
#
PRINTF=/usr/bin/printf
#
######
#
# libatscc2lua_all:: ; \
# $(ECHO) | $(CAT) - >$(LIBATSCC2LUA_ALL_LUA)
#
libatscc2lua_all:: ; \
$(PRINTF) '\n' | $(CAT) - >$(LIBATSCC2LUA_ALL_LUA)
libatscc2lua_all:: ; \
$(PRINTF) '/*\n' | $(CAT) - >>$(LIBATSCC2LUA_ALL_LUA)
libatscc2lua_all:: ; \
$(PRINTF) 'Time of Generation:\n' | $(CAT) - >>$(LIBATSCC2LUA_ALL_LUA)
libatscc2lua_all:: ; \
$(DATE) | $(CAT) - >>$(LIBATSCC2LUA_ALL_LUA)
libatscc2lua_all:: ; \
$(PRINTF) '*/\n\n' | $(CAT) - >>$(LIBATSCC2LUA_ALL_LUA)
#
######

libatscc2lua_all:: ; \
$(CAT) >>$(LIBATSCC2LUA_ALL_LUA) \
CATS/basics_cats.lua \
CATS/integer_cats.lua \
CATS/bool_cats.lua \
CATS/float_cats.lua \
CATS/string_cats.lua \
CATS/gvalue_cats.lua \
CATS/LUAarray_cats.lua \
CATS/LUALIBC/LUAmisc_cats.lua \
CATS/LUALIBC/LUAmath_cats.lua \
CATS/LUALIBC/LUAdate_cats.lua \

libatscc2lua_all:: ; \
$(CAT) >>$(LIBATSCC2LUA_ALL_LUA) \
output/DATS/basics_dats.lua \
output/DATS/char_dats.lua \
output/DATS/string_dats.lua \
output/DATS/list_dats.lua \
output/DATS/list_vt_dats.lua \
output/DATS/option_dats.lua \
output/DATS/stream_dats.lua \
output/DATS/stream_vt_dats.lua \
output/DATS/gvalue_dats.lua \
output/DATS/intrange_dats.lua \
output/DATS/LUAarray_dats.lua \
output/DATS/reference_dats.lua \
output/DATS/arrayref_dats.lua \
output/DATS/matrixref_dats.lua \
output/DATS/gmatrixref_dats.lua \
output/DATS/funarray_dats.lua \
output/DATS/slistref_dats.lua \
output/DATS/qlistref_dats.lua \
output/DATS/ML/list0_dats.lua \
output/DATS/ML/array0_dats.lua \
output/DATS/ML/matrix0_dats.lua \
output/DATS/ML/option0_dats.lua \

######
#
libatscc2lua_all:: ; \
$(PRINTF) '\n/* ****** ****** */\n' | $(CAT) - >>$(LIBATSCC2LUA_ALL_LUA)
libatscc2lua_all:: ; \
$(PRINTF) '\n/* end of [libatscc2lua_all.lua] */\n' | $(CAT) - >>$(LIBATSCC2LUA_ALL_LUA)
#
######

clean:: ; $(RMF) *~ */*~

######

cleanall:: clean
cleanall:: ; $(RMF) output/DATS/*_dats.lua
cleanall:: ; $(RMF) output/DATS/ML/*_dats.lua
cleanall:: ; $(RMF) $(LIBATSCC2LUA_ALL_LUA)

######

###### end of [Makefile] ######
