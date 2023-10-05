local ls = require'luasnip'

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input
local f = ls.f -- function


-- Markdown Snippets

local md_snips = {
    s({
        trig = '$$',
        namr = 'Inline Math',
        desc = 'Insert pair of $$ into line for inline math in markdown.'
    }, {
        t('$$'), i(1), t('$$')
    }),

    s({
        trig = '$d',
        namr = 'Display Math',
        desc = 'Insert pair of $$$ into line for display math markdown.'
    }, {
        t({'$$$', ''}), i(1), t({'', '$$$'})
    }),
}


ls.add_snippets(nil, {
    markdown = md_snips,
})
