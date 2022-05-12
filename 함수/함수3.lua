--인자로 넘어온 테이블이 함수 안에서 변경되는 경우

local function show(t)
    io.write('{')
    for k,v in pairs(t)do
        io.write('['..k..']='..v..', ')
    end
    print('}')
end

local a ={11,22}
show(a)