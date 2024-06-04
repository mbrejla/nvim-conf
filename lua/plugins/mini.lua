return {
  -- Better Around/Inside textobjects
  --
  -- Examples:
  --  - va)  - [V]isually select [A]round [)]paren
  --  - yinq - [Y]ank [I]nside [N]ext [']quote
  --  - ci'  - [C]hange [I]nside [']quote
  {
    'echasnovski/mini.ai',
    version = '*',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
    end
  },
  -- Add/delete/replace surroundings (brackets, quotes, etc.)
  --
  -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
  -- - sd'   - [S]urround [D]elete [']quotes
  -- - sr)'  - [S]urround [R]eplace [)] [']
  {
    'echasnovski/mini.surround',
    version = '*',
    config = function()
      require('mini.surround').setup()
    end
  },
  {
    'echasnovski/mini.pairs',
    version = '*',
    config = function()
      require('mini.pairs').setup()
    end
  }
}
