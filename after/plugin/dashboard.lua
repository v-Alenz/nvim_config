local db = require('dashboard')
local home = os.getenv('HOME')


db.setup({
  theme = 'doom',
  config = {
     header = {
     }, --your header
     center = {
    {
        icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        key = 'SPC f f',
        icon_hi = 'Title',
        desc_hi = 'String',
        key_hi = 'Number',
     },
    {
        icon = '  ',
        desc = 'Git Repo Browser                        ',
        action = 'Telescope git_files',
        key = 'CNT + f',
        icon_hi = 'Title',
        desc_hi = 'String',
        key_hi = 'Number',
     },
    {
        icon = '  ',
        desc = 'Harpoon Files                           ',
        key = 'CNT + e',
        icon_hi = 'Title',
        desc_hi = 'String',
        key_hi = 'Number',
     },
    {
        icon = '  ',
        desc = 'Find  word                              ',
        action = 'Telescope live_grep',
        key = 'SPC f w',
        icon_hi = 'Title',
        desc_hi = 'String',
        key_hi = 'Number',
     },
     },
     footer = {
        'Wetting anime girls since 2014'
     }  --your footer
  },
  hide = {
     statusline   = true,
     tabline      = true,
     winbar       = true,
  },
  preview = {
     command      = 'cat | lolcat -F 0.3',
     file_path    = home .. '/.config/nvim/static/asciiarts/ahegao.cat',
     file_height  = 17,
     file_width   = 88,
  },
})
