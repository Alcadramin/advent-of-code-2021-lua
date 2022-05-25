function openfile(filename) return assert(loadfile(filename))() end

local Polyfills = openfile('./polyfills/common.lua')

local input = './day01/chapter01/chapter01.txt'
local answer = 0
local temp = -1

if not Polyfills.file_exists(input) then return {} end

for line in io.lines(input) do
    number = tonumber(line)
    if temp >= 0 and number > temp then answer = answer + 1 end
    temp = number
end

print('Answer:', answer)
