local ls = require'luasnip'

local s = ls.s -- snippet
local t = ls.t -- text
local i = ls.i -- input
local f = ls.f -- function

-- Documentation at: https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md

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

    s({
        trig = 'pic',
        namr = 'Insert picture from ./pic',
        desc = 'Inert picture from ./pic into mardown.'
    }, {
        t({"["}), i(2), t({"](./pic/pic"}), i(1), t({".png)"})
    }),

    s({
        trig = '<?',
        namr = 'Create PHP tags',
        desc = 'Create a pair of PHP tags (use inside codeblock).'
    }, {
        t({'<?php'}), i(1), t({'?>'})
    }),
}


ls.add_snippets(nil, {
    markdown = md_snips,
})
