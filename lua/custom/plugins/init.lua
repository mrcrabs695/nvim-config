-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   'francescarpi/buffon.nvim',
  --   branch = 'main',
  --   ---@type BuffonConfig
  --   opts = {
  --     --- Add your config here
  --   },
  --   dependencies = {
  --     'nvim-tree/nvim-web-devicons',
  --     'nvim-lua/plenary.nvim',
  --   },
  -- },
  {
    'rolv-apneseth/tfm.nvim',
    lazy = false,
    opts = {
      file_manager = 'yazi',
      replace_netrw = true,
      enable_cmds = true,
    },
    keys = {
      -- Make sure to change these keybindings to your preference,
      -- and remove the ones you won't use
      {
        '<leader>e',
        ':Tfm<CR>',
        desc = 'TFM',
      },
      {
        '<leader>mh',
        ':TfmSplit<CR>',
        desc = 'TFM - horizontal split',
      },
      {
        '<leader>mv',
        ':TfmVsplit<CR>',
        desc = 'TFM - vertical split',
      },
      {
        '<leader>mt',
        ':TfmTabedit<CR>',
        desc = 'TFM - new tab',
      },
    },
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
}
