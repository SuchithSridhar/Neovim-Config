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

-- Latex Snippets

local tex_snips = {
    s({
        trig = 'center',
        namr = 'The center environment',
        desc = 'Create a center enviroment.'
    }, {
        t({'\\begin{center}',''}), i(1), t({'', '\\end{center}'})
    }),

    s({
        trig = 'pic',
        namr = 'Insert picture from ./pic',
        desc = 'Inert picture from ./pic into mardown.'
    }, {
        t({'\\includegraphics[width='}),
        i(2, "1"),
        t({"\\linewidth]{./pic/pic"}),
        i(1),
        t({".png}"})
    }),
}

ls.add_snippets(nil, {
    markdown = md_snips,
    tex = tex_snips
})
