return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'onelight',
        globalstatus = true,
        always_show_tabline = true,
      },

      --[[
      Color reference (from onelight theme):
          lualine_a_normal = green
          lualine_a_insert = blue
          lualine_b_normal = gray
          lualine_a_replace = red
          lualine_a_command = orange
          lualine_a_visual = purple
      --]]

      tabline = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {
          {
            require('grapple-line').lualine,
            draw_empty = true,
          },
        },
        lualine_y = {},
        lualine_z = {
          {
            function()
              return require('grapple').name_or_index()
            end,
            padding = 4,
            color = 'lualine_a_replace',
            draw_empty = true,
          },
        },
      },
      winbar = {},
      sections = {
        lualine_a = {
          {
            'mode',
            icons_enabled = true,
            draw_empty = true,
            padding = 4,
          },
        },
        lualine_b = { {
          'branch',
          icons_enabled = true,
          draw_empty = true,
        } },
        lualine_c = {
          '%=',
          {
            'filename',
            path = 3,
            draw_empty = true,
            color = 'lualine_a_replace',
          },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      extensions = {
        'neo-tree',
      },
    }
  end,
}
