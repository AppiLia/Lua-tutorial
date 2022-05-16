--두 수의 공약수를 화면에 출력하는 함수

local function foo( a,b )
    local m = math.min(a,b)
    for k=m,1,-1 do
        if a%k==0 and b%k==0 then
            print(k)
        end
    end
end

foo(12,30)


--기본값 인자


--local function foo(a=1)
--    return 2^a
--end
--foo(10)
--루아에는 없는 문법

local function pow(a,b)
    if b==nil then b=1 end
    return a^b
end
local x = pow(2,2)
print(x)

local function pow(a,b)
    b=b or 1 --b의 기본값을 1로 지정한다.
                --x or y = 1. x가 false면 x or y ==> y
                        --2. x가 false가 아니면 x or y ==> x
                        --x가 false인 경우 x==nil
                        --x==false
    return a^b
end
local x = pow(2,3)
print(x)
x=pow(3)
print(x)

local t = {
    x=11.23,
    y=2,
    f = function ()

    print('hi')
end,
}
--t.g = function() print('hello') end
function t.g(  )
    print('hello')
end
t.g()

function t.g( a )
    local r = a+10
    return r
end

local a = t.g(100)
print(a)

--table의 element함수를 호출하는 방법
--1. t.g()
--2. t:g() = t.g함수의 첫번째 인자로 자동으로 t테이블이 넘겨진다
--3. function t:g(a)
--          함수 내부에서 self변수 사용가능(self == t)
--   end

function t:g(a) -- t.g(self,a) 
    local r = a*self.y + self.x
    return r
end

local a = t:g(100) -- a = t.g(t,100)
print(a)
