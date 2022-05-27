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
  local pos = 0
  local depth = 0
  local aim = 0

  for line in io.lines(input) do
    if line:match('forward') then
      local x = tonumber(line:match('forward (%d+)'))
      pos = pos + x
      depth = depth + aim * x
    elseif line:match('up') then
      aim = aim - tonumber(line:match('up (%d+)'))
    elseif line:match('down') then
      aim = aim + tonumber(line:match('down (%d+)'))
    end
  end

  print('Part02 Answer:', pos*depth)
end

part01()
part02()
