--local function 함수명(인수들) 실행문들 end

local function foo()
    print('hi')
end

foo()

local function countdownfrom(n)
    for k=n,0,-1 do
        io.write(k..', ')
    end
end

local a = 12
countdownfrom(a)


--return : 함수의 실행을 즉시 중단, 반환값을 돌려준다.

local function pow2(x)
    local xs=x^2
    return xs
end

local x,y=11,12
local z = pow2(x)+pow2(y)
print(x,y,z)


local function pow(base,exponent)
    local ans = base^exponent
    return ans
end

local y = pow(2,10)
print(y)



local function foo(a,b,c)
    print(a,b,c)
end

local y = foo(1,2,3)
print(y)

--return 문이 없는 함수 혹은 return문만 있고 반환값이 없는 함수는 nil을 반환을 한다.


foo(11,-22)
foo(-1)
foo(1,2,3,4)
--부족하면 나머지들은 nll로 채워짐(넘겨받지 않은 인자는 nil이 저장된다.)
--넘어가면 끝에 있는 값들은 버려짐




--함수의 반환값이 두개 이상일수 있다.

--5/2
local function divmod(x,y)
    local d = math.floor(x/y)
    --floor함수는 입력으로 준 변수보다 크지 않은 정수를 반환한다.
    local r = x%y
    return d,r
end

local a,b = divmod(5,2) --d변수 값이 a로 들어가고 r변수는 b로 치환
print(a,b)

local m = divmod(11,2)
print(m)
-- 나머지 값은 저장할 곳이 없기 때문에 버려짐

local x1,x2,x3 = divmod(21,4)
print(x1,x2,x3)

local function sayhi(name)
    print('Hello, '..name)
end

sayhi('hyunseok')
sayhi('Kim')





local function average(t)
    local sum =0
    for k=1,#t do
        sum = sum + t[k]
    end
    return sum/#t
end

local scores={60,90,77,66}
local a = average(scores)
print(a)

local a = average({11,22,7})
print(a)

local a = average{11,22,7}
print(a)

--local t = {11,22,33}  x
--local a = average t   x
--print(a)  X
--lua에서는 함수의 인자는 단 1개이고 그것이 테이블/문자열일 경우 호출하는쪽에서 괄호를 생략할수 있다.
--테이블을 직접 생성해서 넘겨줄때만 OK 나머지는 X

local function foo(name)
    print('hi '..name..'.')
end

foo('park')


local function foo(name)
    print('hi '..name..'.')
end

foo 'park'

local sung = 'kim'
foo(sung)
--foo sung X