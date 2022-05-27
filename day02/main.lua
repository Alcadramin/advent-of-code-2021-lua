function openfile(filename) return assert(loadfile(filename))() end

local Utils = openfile('./utils/common.lua')

local input = './day02/sample.txt'
if not Utils.file_exists(input) then return {} end

function part01()
  print('Not implemented')
end

part01()
