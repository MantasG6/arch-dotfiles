return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
    },
    keys = function()
      local harpoon = require("harpoon")
      local keys = {
        {
          "<leader>a",
          function() harpoon:list():add() end,
          desc = "Add a file to harpoon list",
        },
        {
          "<leader>hh",
          function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
          desc = "Toggle harpoon menu",
        },
        {
          "<leader>q",
          function() harpoon:list():select(1) end,
          desc = "Select 1st file in harpoon list"
        },
        {
          "<leader>w",
          function() harpoon:list():select(2) end,
          desc = "Select 2nd file in harpoon list"
        },
        {
          "<leader>e",
          function() harpoon:list():select(3) end,
          desc = "Select 3rd file in harpoon list"
        },
        {
          "<leader>r",
          function() harpoon:list():select(4) end,
          desc = "Select 4th file in harpoon list"
        },
      }
      return keys
    end,
  }
}
