#
# For generating Test code
#

######

PATSOPT=$(PATSHOME)/bin/patsopt
ATSCC2LUA=../bin/atscc2lua

######

CAT=cat
CPF=cp -f
RMF=rm -f

######

DATS= ./fact.dats
DATSLUA = $(patsubst ./%.dats,./output/%_dats.lua,$(DATS))

all: $(DATSLUA)

./output/%_dats.lua: ./%.dats
	$(PATSOPT) -d $< | $(ATSCC2LUA) -o $@ -i

clean:
	$(RMF) $(DATSLUA)

.PHONY: clean
