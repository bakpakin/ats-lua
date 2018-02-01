######
#
# A simple Makefile
#
######

NPM=npm
MAKE=make

######

all:: ; \
$(MAKE) \
-C BUILD -f ../Makefile_build all

######

npm:: ; \
$(MAKE) \
-C BUILD -f ../Makefile_build npm

######

npm-update:: ; $(NPM) update
npm-install:: ; $(NPM) install

######

cleanall:: ; rm -rf node_modules
cleanall:: ; rm -f package-lock.json

######
#
cleanall:: ; \
$(MAKE) \
-C BUILD -f ../Makefile_build cleanall
#
######

###### end of [Makefile] ######
