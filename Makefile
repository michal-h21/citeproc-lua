.PHONY: test

test:
	texlua texbusted.lua spec/test_spec.lua
