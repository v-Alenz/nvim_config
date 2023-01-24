local home = os.getenv('HOME')
local db = require("dashboard")

db.preview_command = 'cat | lolcat -F 0.3'
db.preview_file_path = home .. '/.config/nvim/static/asciiarts/ahegao.cat'
db.preview_file_height = 17--14
db.preview_file_width = 88--104

db.custom_center = {
    { icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = 'SPC f f' },
    { icon = '  ',
        desc = 'Git Repo Browser                        ',
        action = 'Telescope git_files',
        shortcut = 'CNT + f' },
    { icon = '  ',
        desc = 'Harpoon Files                           ',
        shortcut = 'CNT + e' },
    { icon = '  ',
        desc = 'Find  word                              ',
        action = 'Telescope live_grep',
        shortcut = 'SPC f w' },
}


vim.keymap.set("n", "<leader>;", ":Dashboard<CR>")
