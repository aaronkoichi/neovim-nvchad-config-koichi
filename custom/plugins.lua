local overrides = require("custom.configs.overrides")

local plugins = {
  {
     "zbirenbaum/copilot.lua",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in:
    -- https://vi.stackexchange.com/a/4495/20389
      event = "InsertEnter",
    -- You can also have it load at immediately at
    -- startup by commenting above and uncommenting below:
    -- lazy = false,
    opts = overrides.copilot,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}
return plugins

