local status, ls = pcall(require, "luasnip")
if not status then return end
local s = ls.s -- snippet
local f = ls.f -- function

local dateDMY = function() return { os.date("%d %b %Y") } end

local global_snips = {
  s({
    trig = "datenDMY",
    name = "Date",
    desc = "Date with month name",
  }, {
    f(dateDMY, {}),
  }),
}

local python_snips = require("snips.python")
local markdown_snips = require("snips.markdown")
local tex_snips = require("snips.tex")
local c_snips = require("snips.c")
local cpp_snips = require("snips.cpp")
local jinja_snips = require("snips.jinja")
local html_snips = require("snips.html")

ls.add_snippets(nil, {
  all = global_snips,
  c = c_snips,
  cpp = cpp_snips,
  python = python_snips,
  markdown = markdown_snips,
  tex = tex_snips,
  jinja = jinja_snips,
  html = html_snips,
})
