--인자로 넘어온 테이블이 함수 안에서 변경되는 경우

local function show(t)
    io.write('{')
    for k,v in pairs(t)do
        io.write('['..k..']='..v..', ')
    end
    print('}')
end

local a ={11,22,x=33}
show(a)

local function foo(t)
    t.y=-10
end
foo(a)
show(a)


--가변개수인자
--arg 라는 테이블에 인자들이 순서대로 저장이 되어있다. (자동생성)
local function foo(...)
    show(arg)
end

foo(11)
foo(22,33)
foo(1,2,3,4)

