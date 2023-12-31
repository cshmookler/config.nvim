return function()
    local comment = require("Comment")
    comment.setup({

        padding = true, -- Add a space b/w comment and the line

        sticky = true,  -- Whether the cursor should stay at its position

        -- Ignores empty lines
        ignore = "^$", -- Lines to be ignored while (un)comment

        -- LHS of toggle mappings in NORMAL mode
        toggler = {
            -- Line-comment toggle keymap
            line = 'gcc',
            -- Block-comment toggle keymap
            block = 'gbc',
        },

        -- LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
            -- Line-comment keymap
            line = 'gc',
            -- Block-comment keymap
            block = 'gb',
        },

        -- LHS of extra mappings
        extra = {
            -- Add comment on the line above
            above = 'gcO',
            -- Add comment on the line below
            below = 'gco',
            -- Add comment at the end of line
            eol = 'gcA',
        },

        -- Enable keybindings
        -- NOTE: If given `false` then the plugin won't create any mappings
        mappings = {
            -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
            basic = true,
            -- Extra mapping; `gco`, `gcO`, `gcA`
            extra = true,
        },

        ---@diagnostic disable-next-line: assign-type-mismatch
        pre_hook = nil, ---Function to call before (un)comment

        ---@diagnostic disable-next-line: assign-type-mismatch
        post_hook = nil, -- Function to call after (un)comment

    })
end
