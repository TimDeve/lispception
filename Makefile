.PHONY: run

out/lispception: main.lua
	@carp -b main.carp

run: main.lua
	@carp -x main.carp

main.lua: main.fnl
	@fennel --compile $< > $@

