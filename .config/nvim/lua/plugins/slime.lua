return {
  "jpalardy/vim-slime",
  init = function()
    -- These options MUST be set before the plugin loads
    vim.g.slime_target = "tmux"
    vim.g.slime_bracketed_paste = 1

    -- Optional: This prevents the prompt every time you restart Neovim.
    -- It tells slime to always target the "last" active tmux pane.
    vim.g.slime_default_config = {
      socket_name = "default",
      target_pane = "{last}"
    }
    vim.g.slime_dont_ask_default = 1
  end,
}
