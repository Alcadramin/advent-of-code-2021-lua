local Utils = {}

-- Checks if file exists
function Utils.file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

-- Prints table contents
function Utils.print_r(arr, indentLevel)
    local str = ""
    local indentStr = "#"

    if (indentLevel == nil) then
        print(Utils.print_r(arr, 0))
        return
    end

    for i = 0, indentLevel do indentStr = indentStr .. "\t" end

    for index, value in pairs(arr) do
        if type(value) == "table" then
            str = str .. indentStr .. index .. ": \n" ..
                Utils.print_r(value, (indentLevel + 1))
        else
            str = str .. indentStr .. index .. ": " .. value .. "\n"
        end
    end
    return str
end

return Utils
