vim.pack.add({
    "https://github.com/nyoom-engineering/oxocarbon.nvim",
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/nvim-lualine/lualine.nvim',
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/silentium-theme/silentium.nvim",
    "https://github.com/neanias/everforest-nvim",
    "https://github.com/goolord/alpha-nvim",

})

local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
    signature = { enabled = true },
    completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 300 },
        menu = {
            auto_show = true,
            auto_show_delay_ms = 300,

        },
    },
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, { desc = 'Telescope help tags' })

require('everforest').setup({
    background = 'hard'
})
vim.cmd("colorscheme everforest")
require('lualine').setup({
  options = { theme = 'auto' }
})

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {

[[                Y.                      _   ]],
[[                YiL                   .```.  ]],
[[                Yii;                .; .;;`.    ]],
[[                YY;ii._           .;`.;;;; :    ]],
[[                iiYYYYYYiiiii;;;;i` ;;::;;;;    ]],
[[            _.;YYYYYYiiiiiiYYYii  .;;.   ;;; ]],
[[         .YYYYYYYYYYiiYYYYYYYYYYYYii;`  ;;;;    ]],
[[       .YYYYYYY$$YYiiYY$$$$iiiYYYYYY;.ii;`..   ]],
[[      :YYY$!.  TYiiYY$$$$$YYYYYYYiiYYYYiYYii.    ]],
[[      Y$MM$:   :YYYYYY$!"``"4YYYYYiiiYYYYiiYY.    ]],
[[   `. :MM$$b.,dYY$$Yii" :'   :YYYYllYiiYYYiYY    ]],
[[_.._ :`4MM$!YYYYYYYYYii,.__.diii$$YYYYYYYYYYY]],
[[.,._ $b`P`     "4$$$$$iiiiiiii$$$$YY$$$$$$YiY;]],
[[   `,.`$:       :$$$$$$$$$YYYYY$$$$$$$$$YYiiYYL]],
[[    "`;$$.    .;PPb$`.,.``T$$YY$$$$YYYYYYiiiYYU:  ]],
[[    ;$P$;;: ;;;;i$y$"!Y$$$b;$$$Y$YY$$YYYiiiYYiYY ]],
[[    $Fi$$ .. ``:iii.`-":YYYYY$$YY$$$$$YYYiiYiYYY    ]],
[[    :Y$$rb ````  `_..;;i;YYY$YY$$$$$$$YYYYYYYiYY:    ]],
[[     :$$$$$i;;iiiiidYYYYYYYYYY$$$$$$YYYYYYYiiYYYY. ]],
[[      `$$$$$$$YYYYYYYYYYYYY$$$$$$YYYYYYYYiiiYYYYYY    ]],
[[      .i!$$$$$$YYYYYYYYY$$$$$$YYY$$YYiiiiiiYYYYYYY    ]],
[[     :YYiii$$$$$$$YYYYYYY$$$$YY$$$$YYiiiiiYYYYYYi' ]],


}

dashboard.section.buttons.val = {
    dashboard.button("p", "🐕  much project, very find", ":Telescope projects <CR>"),
    dashboard.button("n", "🐶  wow new file, such creation", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "🐕  very search, much file", ":Telescope find_files <CR>"),
    dashboard.button("r", "🐶  many recent, such history", ":Telescope oldfiles <CR>"),
    dashboard.button("c", "🐕  wow config, very tweak", ":e ~/.config/nvim/init.lua<CR>"),
}
alpha.setup(dashboard.opts)
