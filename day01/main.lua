function openfile(filename) return assert(loadfile(filename))() end

local Utils = openfile('./utils/common.lua')

local input = './day01/sample.txt'
if not Utils.file_exists(input) then return {} end

function part01()
    local answer = 0
    local temp = -1

    for line in io.lines(input) do
        local number = tonumber(line)
        if temp >= 0 and number > temp then answer = answer + 1 end
        temp = number
    end

    print('Part01 Answer:', answer)
end

function part02()
    local answer = -3
    local i0 = 0
    local i1 = 0
    local i2 = 0

    for line in io.lines(input) do
        local number = tonumber(line)
        if (number + i1 + i2) > (i0 + i1 + i2) then answer = answer + 1 end
        i0 = i1
        i1 = i2
        i2 = number
    end

    print('Part02 Answer:', answer)
end

part01()
part02()
