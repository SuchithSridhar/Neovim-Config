local ls = require("luasnip")

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input

return {
  s({
    trig = "align",
    name = "The align environment",
    desc = "Create a align enviroment.",
  }, {
    t({ "\\begin{align}", "" }),
    i(1),
    t({ "", "\\end{align}" }),
  }),

  s({
    trig = "im",
    name = "Inline math",
  }, {
    t({ "\\( " }),
    i(1),
    t({ " \\)" }),
  }),
  s({
    trig = "bm",
    name = "Block math",
  }, {
    t({ "\\[", "" }),
    i(1),
    t({ "", "\\]" }),
  }),
  s({
    trig = "frac",
    name = "Fraction Inline",
  }, {
    t({ "\\frac{" }),
    i(1),
    t({ "}{" }),
    i(2),
    t({ "}" }),
  }),

  s({
    trig = "pic",
    name = "Insert picture from ./pic",
    desc = "Inert picture from ./pic into mardown.",
  }, {
    t({ "\\includegraphics[width=" }),
    i(2, "1"),
    t({ "\\linewidth]{./pic/pic" }),
    i(1),
    t({ ".png}" }),
  }),

  s({
    trig = "verb",
    name = "Inline code",
    desc = "Insert inline code into latex.",
  }, {
    t({ "\\verb|" }),
    i(1),
    t("|"),
  }),

  s({
    trig = "langle",
    name = "Angle brackets",
    desc = "Insert pair of angle brackets",
  }, {
    t({ "\\langle " }),
    i(1),
    t(" \\rangle"),
  }),
}
