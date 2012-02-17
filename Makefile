# Makefile generated by gb: http://go-gb.googlecode.com
# gb provides configuration-free building and distributing

include $(GOROOT)/src/Make.inc

TARG=gocached
GOFILES=\
	cachestorage.go\
	command.go\
	eventnotifierstorage.go\
	generationalstorage.go\
	gocached.go\
	hashingstorage.go\
	heapexpiringstorage.go\
	mapcachestorage.go\

# gb: this is the local install
GBROOT=.

# gb: compile/link against local install
GCIMPORTS+= -I $(GBROOT)/_obj
LDIMPORTS+= -L $(GBROOT)/_obj

# gb: compile/link against GOPATH entries
GOPATHSEP=:
ifeq ($(GOHOSTOS),windows)
GOPATHSEP=;
endif
GCIMPORTS+=-I $(subst $(GOPATHSEP),/pkg/$(GOOS)_$(GOARCH) -I , $(GOPATH))/pkg/$(GOOS)_$(GOARCH)
LDIMPORTS+=-L $(subst $(GOPATHSEP),/pkg/$(GOOS)_$(GOARCH) -L , $(GOPATH))/pkg/$(GOOS)_$(GOARCH)

# gb: default target is in GBROOT this way
command:

include $(GOROOT)/src/Make.cmd

# gb: copy to local install
$(GBROOT)/bin/$(TARG): $(TARG)
	mkdir -p $(dir $@); cp -f $< $@
command: $(GBROOT)/bin/$(TARG)

# gb: local dependencies
$(TARG): $(GBROOT)/_obj/expiry.a

