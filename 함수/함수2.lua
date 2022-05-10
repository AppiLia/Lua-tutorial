--익명함수 : function(인수들) 실행문들 end
--이름이 없는 함수다 이소리

--function() print('hi') end --이상태로는 호출이 안됨
--일반적으로 호출을 하려면 변수에 지정을 해줘야함

local foo = function() print('hi') end
foo()

local function foo(a,b)
    return a+b
end
--1
local goo = function(a,b) return a^b end
--2

--1번과 2번의 차이
--1번 방식은 2번 방식은 함수의 파라메터를 집어넣을때 외부에서 함수를 정의하고, 테이블에 끼워넣는 방식이 아니고 테이블에 직접 함수를 정의해서 집어넣을수 있음

print(foo(11,22))
print(goo(2,10))



--lua의 기본자료형 = nil, 숫자, 문자열, boolean(true/false), table, function

local fs = {foo,goo}
local a=fs[1](2,10)
local b=fs[2](2,10)

print(a,b)

--함수 자체도 table의 요소 자체가 될수 있다.


--1번,2번 차이 예시

local t = {x=11,y=22}

print(t.x,t.y)

--테이블에는 key-value쌍들을 넣을수 있다.

local t = {
    foo = function(a,b) return a+b end,
    goo = function(a,b) return a^b end,
}

local a = t.foo(2,10)
local b = t.goo(2,10)

print(a,b)

--익명함수를 이용하면 테이블의 key-value 요소로 직접 함수를 작성할수 있다.

foo = function(a,b) return a+b end
goo = function(a,b) return a^b end

local function hoo(func)
    local r = func(2,10)
    return r
end

local a = hoo(foo)
local b = hoo(goo)
local c = hoo(function(a,b) return a*b end)
print(a, b, c)


--local변수의 범위
local x = 11