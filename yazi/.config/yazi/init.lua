---@diagnostic disable: cast-local-type

function Linemode:size_and_time()
    local size = self._file:size()

    local modification_time = math.floor(self._file.cha.mtime or 0)
    if modification_time == 0 then
        modification_time = ""
    elseif os.date("%Y", modification_time) == os.date("%Y") then
        modification_time = os.date("%b %d %H:%M", modification_time)
    else
        modification_time = os.date("%b %d %Y", modification_time)
    end

    local creation_time = math.floor(self._file.cha.btime or 0)
    if creation_time == 0 then
        creation_time = ""
    elseif os.date("%Y", creation_time) == os.date("%Y") then
        creation_time = os.date("%b %d %H:%M", creation_time)
    else
        creation_time = os.date("%b %d %Y", creation_time)
    end

    return string.format(
        "%s, %s, %s",
        size and ya.readable_size(size) or "-",
        modification_time,
        creation_time
    )
end
