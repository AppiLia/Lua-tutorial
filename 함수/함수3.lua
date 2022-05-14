--인자로 넘어온 테이블이 함수 안에서 변경되는 경우

local function show(t)
    io.write('{')
    for k,v in pairs(t)do
        io.write('['..k..']='..v..', ')
    end
    print('}')
end

--local a ={11,22,x=33}
--show(a)

--local function foo(t)
--    t.y=-10
--end
--foo(a)
--show(a)


--가변개수인자
--arg 라는 테이블에 인자들이 순서대로 저장이 되어있다. (자동생성)
--local function foo(...)
--    show(arg)
--end

--foo(11)
--foo(22,33)
--foo(1,2,3,4)

--local function totalsum(...)
--    local sum=0
--    for k=1,arg.n do
--        sum=sum+arg[k]
--    end
--    return sum
--end

--local a = totalsum(11,22)
--print(a)
--a=totalsum(11,22,51,67,10)
--print(a)


local function calc(s, ...)
    local ret
    if s=='add'then
        ret=0
        for k=1,arg.n do
            ret=ret+arg[k]
        end
    elseif s=='mul' then
        ret=1
        for k=1,arg.n do
            ret=ret*arg[k]
        end
    end
    return ret
end

local a = calc('add',2,3,4)
print(a)
local a = calc('mul',2,3,4,2)
print(a)
