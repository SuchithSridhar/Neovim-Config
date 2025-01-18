local ls = require("luasnip")

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input
local f = ls.f -- function

return {
  s({
    trig = "block",
    name = "Create a block",
    desc = "Create a block",
  }, {
    t("{% block "),
    i(1, "block_name"),
    t({ " %}", "" }),
    i(2),
    t({ "", "{% endblock " }),
    f(function(args) return args[1][1] end, { 1 }),
    t(" %}"),
  }),

  s({
    trig = "{%",
    name = "Jinja tag",
    desc = "Jinja tag",
  }, {
    t("{% "),
    i(1),
    t({ " %}" }),
  }),
}
