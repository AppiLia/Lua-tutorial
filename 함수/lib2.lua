print('lib2.lua')
print('is called')

--return function(a,b)
--    local m=a*b
--    return m
--end
--익명함수

local function mul(a,b)
    local m=a*b
    return m
end

return mul