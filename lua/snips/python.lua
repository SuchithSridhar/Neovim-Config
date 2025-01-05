local ls = require("luasnip")

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input

return {
  -- for index, value in enumerate()
  s({
    trig = "fore",
    name = "for i, value in enumerate",
    desc = "for loop using the enumerate function",
  }, {
    t({ "for " }),
    i(1, "index"),
    t({ ", " }),
    i(2, "value"),
    t({ " in enumerate(" }),
    i(3, "iterable"),
    t({ "):" }),
  }),
}
