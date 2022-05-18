--print('This is lib1')

local function add(a,b)
    print('lib1.add() called')
    local s = a+b
    return s
end

local function sub(a,b)
    print('lib1.sub() called')
    local s = a-b
    return s
end

return {add,sub}