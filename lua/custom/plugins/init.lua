-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require 'custom.plugins.harpoon',

  -- My fancy plugins WIP
  {
    'DrinoSan/scratchMe',
    config = function()
      require('scratchMe').setup()
    end,
  },

  -- {
  --   dir = '/Users/sandi/DEV/nvimPlugins/scrachtMe',
  --   name = 'scratchMe',
  --   config = function()
  --     require('scratchMe').setup()
  --   end,
  -- },
}
