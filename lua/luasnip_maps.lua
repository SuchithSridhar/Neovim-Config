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
        t({"!["}), i(2), t({"](./pic/pic"}), i(1), t({".png)"})
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
        trig = 'align',
        namr = 'The align environment',
        desc = 'Create a align enviroment.'
    }, {
        t({'\\begin{align}',''}), i(1), t({'', '\\end{align}'})
    }),

    s({
        trig = 'gather',
        namr = 'The gather environment',
        desc = 'Create a gather enviroment.'
    }, {
        t({'\\begin{gather}',''}), i(1), t({'', '\\end{gather}'})
    }),

    s({
        trig = '\\(',
        namr = 'Inline math',
    }, {
        t({'\\('}), i(1), t({'\\)'})
    }),
    s({
        trig = '\\[',
        namr = 'Block math',
    }, {
        t({'\\[', ''}), i(1), t({'', ']\\)'})
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

    s({
        trig = 'verb',
        namr = 'Inline code',
        desc = 'Insert inline code into latex.'
    }, {
        t({'\\verb|'}),
        i(1),
        t('|')
    })
}

local jinja_snips = {
    s({
        trig = 'block',
        namr = 'Create a block',
        desc = 'Create a block'
    }, {
        t("{% block "),
        i(1, "block_name"),
        t({" %}", ""}),
        i(2),
        t({"", "{% endblock "}),
        f(function(args) return args[1][1] end, {1}),
        t(" %}")
    }),

    s({
        trig = '{%',
        namr = 'Jinja tag',
        desc = 'Jinja tag'
    }, {
        t("{% "),
        i(1),
        t({" %"}),  -- The brace will close itself
    }),
}

local dateDMY = function() return {os.date('%d %b %Y')} end

local global_snips = {
    s({
        trig = "datenDMY",
        namr = "Date",
        desc = "Date with month name"
    }, {
        f(dateDMY, {}),
    })
}

ls.add_snippets(nil, {
    all = global_snips,
    markdown = md_snips,
    tex = tex_snips,
    jinja = jinja_snips,
})
