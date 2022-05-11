
--local변수의 범위
local x = 11.12

--x는 이 파일 범위 에서만 사용된다

local function foo(a,b)
    --local x = 1
    local y = 22.34
    local z = x+y --현재 x는 11.12를 가리키고 있음
    print(z)
    return a+b
end

print(y) --y는 참조되있는 값이 없음
--y와 z는 함수 foo 안에서만 사용가능
--참조하고자하는 local변수가 함수내부에 없다면 함수바깥에서 찾는다.
--함수내에 있으면 그 값을 먼저 사용한다.
foo(1,2)

local x = 11.12
local function foo()
    local x = -1 --함수내에 x 값이 정의가 됬다면 바깥에 있는 x와는 다른것을 의미한다.
    x=0  --그래서 x=0이라 하면 함수내의 x값이 0이 되는것이라서 바깥에 있는 x값은 영향을 받지 않는다.
end

foo()
print(x)
