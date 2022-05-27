function openfile(filename) return assert(loadfile(filename))() end

local Utils = openfile('./utils/common.lua')

local input = './day02/input.txt'
if not Utils.file_exists(input) then return {} end

function part01()
  local pos = 0
  local depth = 0

  for line in io.lines(input) do
    if line:match('forward') then
      pos = pos + tonumber(line:match('forward (%d+)'))
    elseif line:match('up') then
      depth = depth - tonumber(line:match('up (%d+)'))
    elseif line:match('down') then
      depth = depth + tonumber(line:match('down (%d+)'))
    end
  end

  print('Part01 Answer:', pos*depth)
end

function part02()

end

part01()
