local Mapper = {
    defaultOpts = { noremap = true },
    modeToKeymapMode = {
        normal = 'n',
        insert = 'i',
        terminal = 't',
        visual = 'x'
    }
}

function Mapper:new(mappings, leader)
    o = {}

    setmetatable(o, self)
    self.__index = self

    self.mappings = mappings
    self.leader = leader or ' '

    return o
end

function Mapper:map()
    self:__setLeader()
    self:__mapLeader()
    self:__mapModes()
end

function Mapper:__setLeader()
    vim.g.mapleader = self.leader
end

function Mapper:__mapLeader()
    local leaderMappings = self.mappings.leader or nil

    if leaderMappings == nil then return end

    for i = 1, #leaderMappings do
        local mapping = leaderMappings[i]

        mapping.key = '<leader>' .. mapping.key
        self:__mapForMode('n', mapping)
    end
end

function Mapper:__mapModes()
    for mode, modedMappings in pairs(self.mappings) do
        repeat
            -- skip 'leader' "mode"
            if mode == 'leader' then do break end end

            for i = 1, #modedMappings do
                self:__mapForMode(self.modeToKeymapMode[mode], modedMappings[i])
            end
        until true
    end
end

function Mapper:__mapForMode(mode, mapping)
    vim.api.nvim_set_keymap(
        mode,
        mapping.key,
        mapping.action,
        self:__prepareOpts(mapping.opts)
    )
end

function Mapper:__prepareOpts(mappingOpts)
    if opts == nil then return self.defaultOpts end

    local opts = self.defaultOpts
    for key, val in pairs(mappingsOpts) do
        opts[key] = val
    end

    return opts
end

return Mapper
