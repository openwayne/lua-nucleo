--------------------------------------------------------------------------------
-- 0221-tserialize-autogen.lua: autogenerated random tests for tserialize
-- This file is a part of lua-nucleo library
-- Copyright (c) lua-nucleo authors (see file `COPYRIGHT` for the license)
--------------------------------------------------------------------------------

local make_suite = assert(loadfile('test/test-lib/init/strict.lua'))(...)

local check_ok = import 'test/test-lib/tserialize-test-utils.lua' { 'check_ok' }
local gen_random_dataset = import 'test/test-lib/table.lua' { 'gen_random_dataset' }

local test = make_suite("tserialize-autogenerated")

test "Random autogenerated tests 1-500" (function()
  for i = 1, 500 do
    check_ok(gen_random_dataset())
  end
end)
