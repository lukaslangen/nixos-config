local opt = vim.opt

local FileSystem = {}

local function exists(file)
    local ok, err, code = os.rename(file, file)

    if not ok and code == 13 then
        -- permission denied, but it exists
        return true
    end

    return ok, err
end

local function isDir(path)
    return exists(path .. '/')
end

local function safeMkdir(path)
    if not isDir(path) then
        os.execute("mkdir -p " .. path)
    end
end

function FileSystem.swap(path)
    local swapDir = os.getenv("HOME") .. '/' .. path

    safeMkdir(swapDir)

    opt.swapfile = true
    opt.directory = swapDir
end

function FileSystem.undo(path)
    local undoDir = os.getenv("HOME") .. '/' .. path

    safeMkdir(undoDir)

    opt.undofile = true
    opt.undodir = undoDir
end

return FileSystem
