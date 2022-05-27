function openfile(filename) return assert(loadfile(filename))() end

local Polyfills = openfile('./utils/common.lua')

local input = './day01/input.txt'
if not Polyfills.file_exists(input) then return {} end

function part01()
    local answer = 0
    local temp = -1


    for line in io.lines(input) do
        number = tonumber(line)
        if temp >= 0 and number > temp then answer = answer + 1 end
        temp = number
    end

    print('Answer:', answer)
end

function part02()

end

part01()
