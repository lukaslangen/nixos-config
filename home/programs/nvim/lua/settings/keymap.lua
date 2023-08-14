local mappings = {
    leader = {
        {key = 'fs', action = ':up<cr>'},
        {key = '<space>', action = ':nohlsearch<cr>', opts = {silent = true}},
        {key = 'bb', action = ':Buffers<cr>'},
        {key = 'ff', action = ':Files<cr>'},
        {key = 'jk', action = 'mmA;<esc>`m'},
    },
    normal = {
        {key = 'j', action = 'gj'},
        {key = 'k', action = 'gk'},
    },
    insert = {
        {key = 'jj', action = '<esc>'},
        {key = '<C-o>', action = '<esc>o'},
        {key = 'jk', action = '<esc>mmA;<esc>`ma'},
    },
    terminal = {
        {key = 'jj', action = '<C-\\><C-n>'}
    }
}

local Mapper = require('modules.Mapper')
mapper = Mapper:new(mappings)

mapper:map()
