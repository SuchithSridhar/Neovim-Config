local ls = require("luasnip")
local lse = require("luasnip.extras")

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input
local r = lse.rep -- represent

-- A lot of these are taken from rafamadriz/friendly-snippets
return {
  -- Typedef Struct
  s({
    trig = "ts",
    name = "typedefstruct",
    desc = "typedef a struct with no name",
  }, {
    t({ "typedef struct {", "" }),
    i(2),
    t({ "", "} " }),
    i(1),
    t({ ";" }),
  }),

  -- Header file if statement
  s({
    trig = "hfile",
    name = "H file",
    desc = "Header for .h files",
  }, {
    t("#ifndef "),
    i(1),
    t({ "", "" }),
    t("#define "),
    r(1),
    t({ "", "", "" }),
    i(2),
    t({ "", "", "#endif" }),
  }),
}
