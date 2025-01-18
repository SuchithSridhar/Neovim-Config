local ls = require("luasnip")
local lse = require("luasnip.extras")

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input
local f = ls.f -- function
local rep = lse.rep -- function

-- Function to find the image with the largest number in './pic' directory
local function findLargestPic()
  local cwDir = vim.fn.getcwd()
  local cwdContent = vim.split(vim.fn.glob(cwDir .. "/pic/*"), "\n", { trimempty = true })

  local maxNum = 0
  for _, file in pairs(cwdContent) do
    local num = file:match(".*/pic(%d+).png")
    if num then
      num = tonumber(num)
      if num and num > maxNum then maxNum = num end
    end
  end

  -- Return the highest number found as a string
  return string.format("pic%d.png", maxNum)
end

-- Markdown Snippets

return {
  s({
    trig = "im",
    name = "Inline Math",
    desc = "Insert pair of $ into line for inline math in markdown.",
  }, {
    t("$"),
    i(1),
    t("$"),
  }),

  s({
    trig = "$$",
    name = "Display Math",
    desc = "Insert pair of $$ into line for display math markdown.",
  }, {
    t({ "$$", "" }),
    i(1),
    t({ "", "$$" }),
  }),

  s({
    trig = "align",
    name = "Align Environment",
    desc = "Display math and align environemnt within.",
  }, {
    t({ "$$", "\\begin{aligned}", "" }),
    i(1),
    t({ "", "\\end{aligned}", "$$" }),
  }),

  s({
    trig = "gather",
    name = "gather Environment",
    desc = "Display math and gather environemnt within.",
  }, {
    t({ "$$", "\\begin{gathered}", "" }),
    i(1),
    t({ "", "\\end{gathered}", "$$" }),
  }),

  s({
    trig = "mbf",
    name = "Math bold font",
    desc = "Math bold font",
  }, {
    t({ "\\mathbf{" }),
    i(1),
    t({ "}" }),
  }),

  s({
    trig = "mbb",
    name = "Math bb font",
    desc = "Math bb font",
  }, {
    t({ "\\mathbb{" }),
    i(1),
    t({ "}" }),
  }),

  s({
    trig = "begin",
    name = "begin Environment",
    desc = "Insert a LaTeX begin environment",
  }, {
    t({ "\\begin{" }),
    i(1, "environment"), -- First placeholder for environment name
    t({ "}", "" }),
    i(2, "content"), -- Second placeholder for the environment content
    t({ "", "\\end{" }),
    rep(1), -- Repeats the first placeholder
    t({ "}" }),
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

  s({
    trig = "image",
    name = "Insert an image",
    desc = "Insert an image",
  }, {
    t({ "![" }),
    i(2),
    t({ "](" }),
    i(1),
    t({ ".png)" }),
  }),

  s({
    trig = "pic",
    name = "Insert largest number picture from ./pic",
    desc = "Find and insert the picture with the largest number from ./pic directory.",
  }, {
    t("!["),
    i(1),
    t("](./pic/"),
    f(findLargestPic, {}),
    t(")"),
  }),

  s({
    trig = "<?",
    name = "Create PHP tags",
    desc = "Create a pair of PHP tags (use inside codeblock).",
  }, {
    t({ "<?php" }),
    i(1),
    t({ "?>" }),
  }),
}
