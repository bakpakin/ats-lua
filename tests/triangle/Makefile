#
# For generating Test code
#

######

PATSOPT=$(PATSHOME)/bin/patsopt
ATSCC2LUA=../../bin/atscc2lua
LUA=lua

######

CAT=cat
CPF=cp -f
RMF=rm -f

######

DATS= ./triangle.dats
DATSLUA = $(patsubst ./%.dats,./output/%_dats.lua,$(DATS))

all: $(DATSLUA)

./output/%_dats.lua: ./%.dats
	$(PATSOPT) -d $< | $(ATSCC2LUA) -r -o $@ -i

run: $(TARGET)
	$(LUA) main.lua

clean:
	$(RMF) $(DATSLUA)

.PHONY: clean run
