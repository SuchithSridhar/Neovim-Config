local ls = require("luasnip")

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input
local f = ls.f -- function

ls.filetype_extend("htmldjango", { "html" })
ls.filetype_extend("django", { "html" })

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
    name = "Django tag",
    desc = "Django tag",
  }, {
    t("{% "),
    i(1),
    t({ " %}" }),
  }),
}
