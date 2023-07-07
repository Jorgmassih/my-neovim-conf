require('bufferline').setup{
    highlights = require("catppuccin.groups.integrations.bufferline").get(),
    options = {
        numbers="ordinal",
        close_command = "bp|sp|bn|bd! %d",
        right_mouse_command = "bp|sp|bn|bd! %d",
        left_mouse_command = "buffer %d",
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = "",
        show_close_icon = false,
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 10,
        show_tab_indicators = true,
        groups = {
            options = {
              toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
            },
            items = {
                {
                    name = "Tests", -- Mandatory
                    highlight = {underline = true, sp = "blue"}, -- Optional
                    priority = 2, -- determines where it will appear relative to other groups (Optional)
                    icon = "", -- Optional
                    matcher = function(buf) -- Mandatory
                      return buf.filename:match('%_test') or buf.filename:match('%_spec')
                    end,
                },
                {
                    name = "Docs",
                    highlight = {undercurl = true, sp = "green"},
                    auto_close = false,  -- whether or not close this group if it doesn't contain the current buffer
                    matcher = function(buf)
                      return buf.filename:match('%.md') or buf.filename:match('%.txt')
                    end,
                    separator = { -- Optional
                      style = require('bufferline.groups').separator.tab
                    },
                }
            }
        },
        indicator = {
            icon = '▎',
            indicator = "icon"
        },
        offsets = {
            {
                filetype = "NERDTree",
                text = function()
                    return vim.fn.getcwd()
                end,
                highlight = "Directory",
                separator = true -- use a "true" to enable the default, or set your own character
            }
        },
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        always_show_bufferline = true,
        diagnostics = false,
        themable = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        groups = {
            items = {
                require('bufferline.groups').builtin.pinned:with({ icon = "" })
            }
        }
    },
}
