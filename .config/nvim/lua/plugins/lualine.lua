return {
  {
    "letieu/harpoon-lualine",
    dependencies = {
      {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
      }
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'material',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
      },
      sections = {
        lualine_c = {
          '%=',
          {
            "harpoon2",
            icon = ' ',
            indicators = { "Q", "W", "E", "R" },
            active_indicators = { "[Q]", "[W]", "[E]", "[R]" },
            color_active = { fg = "#ba181b" },
            _separator = " ",
            no_harpoon = "Harpoon not loaded",
          },
        },
        lualine_x = {
          {
            'fileformat',
            icons_enabled = true,
            symbols = {
              unix = 'LF',
              dos = 'CRLF',
              mac = 'CR',
            },
          },
        },
      }
    },
  },
  {
    'nvim-tree/nvim-web-devicons',
    opts = {}
  },
}
