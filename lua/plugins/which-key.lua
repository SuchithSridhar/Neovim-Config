return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.opt.timeoutlen
    delay = 0,
    icons = {
      mappings = vim.g.have_nerd_font,
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },

    -- Document existing key chains
    -- spec = {
    --   { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
    --   { '<leader>d', group = '[D]ocument' },
    --   { '<leader>r', group = '[R]ename' },
    --   { '<leader>s', group = '[S]earch' },
    --   { '<leader>w', group = '[W]orkspace' },
    --   { '<leader>t', group = '[T]oggle' },
    --   { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    -- },
    spec = {
      { '<leader>d', group = '[D]ianostics' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>n', group = '[N]eovim' },
      { '<leader>l', group = '[L]sp' },
    }
  },
}
