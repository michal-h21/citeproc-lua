-- test_spec.lua

-- we use packages provided by LuaTeX, so we need to take care of it
-- in the future, we should all dependend packages publish on LuaRocks
-- so we can get rid of this dependency
kpse.set_program_name "luatex"
require "lualoader"
package.path = ";../src/?.lua" .. package.path

expose("exposed test for citeproc-lua", function()
    local citeproc = require("citeproc")


    -- tests can go here
    describe("load basic csl style", function()
      local cslobj = citeproc:new()
      local status, msg = cslobj:load_file("spec/sample.csl")
      it("can load basic csl sample", function()
        assert.truthy(status)
      end)

    end)

    describe("some assertions", function()
        it("tests positive assertions", function()
            assert.is_true(true)    -- Lua keyword chained with _
            assert.True(true)         -- Lua keyword using a capital
            assert.are.equal(1, 1)
            assert.has.errors(function() error("this should fail") end)
        end)

        it("tests negative assertions", function()
            assert.is_not_true(false)
            assert.are_not.equals(1, "1")
            assert.has_no.errors(function() end)
        end)
    end)

    describe("a block", function()
        it("should have lots of features", function()
            -- deep check comparisons!
            assert.are.same({ table = "great"}, { table = "great" })

            -- or check by reference!
            assert.are_not.equal({ table = "great"}, { table = "great"})

            assert.truthy("this is a string") -- truthy: not false or nil

            assert.True(1 == 1)
            assert.is_true(1 == 1)

            assert.falsy(nil)
            assert.has_error(function() error("Wat") end, "Wat")
        end)
    end)

    -- more tests pertaining to the top level
end)
