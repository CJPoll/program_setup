PROJECT = test
EXECUTABLE = ./rel/$(PROJECT)/bin/$(PROJECT)
REBAR := $(shell which rebar 2>&1 >/dev/null; if [ $$? -eq 0  ]; then which rebar; else echo /usr/local/bin/rebar; fi)
REBAR_BUILD_DIR = $(shell pwd)/.rebar-build

.PHONY: rel

all: $(REBAR)  deps compile rel

deps: $(REBAR)
	rebar update-deps
	rebar get-deps
	rebar check-deps

deps-compile: $(REBAR)
	rebar compile skip-apps=$(PROJECT)

compile: deps
	rebar skip-deps=true compile

rel: $(REBAR) 
	rebar generate

clean: $(REBAR)  
	rebar clean
	make -C rel/funny clean

eunit: compile
	rebar skip-deps=true eunit

distclean: $(REBAR) 
	rebar delete-deps

docs: $(REBAR)  
	rebar skip-deps=true doc

start: all
	$(EXECUTABLE) start

attach: 
	$(EXECUTABLE) attach

stop: 
	$(EXECUTABLE) stop

console: all
	$(EXECUTABLE) console

$(REBAR):
	@rm -rf $(REBAR_BUILD_DIR)
	git clone git://github.com/rebar/rebar.git $(REBAR_BUILD_DIR)
	cd $(REBAR_BUILD_DIR) && ./bootstrap
	sudo mv $(REBAR_BUILD_DIR)/rebar $(REBAR)
	@rm -rf $(REBAR_BUILD_DIR)
